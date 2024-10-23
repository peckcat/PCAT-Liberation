#define __DEBUG_FLAG__ 0
#define GET_TIME ([time, serverTime] select isMultiplayer)
#define COMBAT_INTENSITY(min_value, max_value) (combat_readiness<max_value and combat_readiness>=min_value)
#define Dedicated_RM_machineID ([0, -2] select isDedicated)

#if __DEBUG_FLAG__ == 1
	#define IS_TIMEOUT(LastTimestamp, timeout) (([time, serverTime] select isMultiplayer) > 60)
#else
	#define IS_TIMEOUT(LastTimestamp, timeout) (([time, serverTime] select isMultiplayer)-LastTimestamp > timeout)
#endif

if (!isServer) exitWith {};// NOTE: 如果不是伺服器端則退出.

sam_classname = "B_Truck_02_CAMM_F"; // CAMM 5KM
//sam_classname1 = "B_Truck_02_CAMM_ER_F"; // CAMM 45KM

PCAT_area_antiair_group       = createGroup [GRLIB_side_enemy, false];
PCAT_area_antiair_Radar_group = createGroup [GRLIB_side_enemy, false];
PCAT_area_antiair_RadarVeh_spawnNum = 3;
PCAT_area_antiair_RadarVeh_array = [];
PCAT_area_antiair_Detected_Flag = false;

Intercepter_FromAB_Num = 3; 			// NOTE: 從機場起飛的飛機數量
Intercepter_CAP_Num = 3;    			// NOTE: 從邊界接近的支援致空機數量
Intercepter_LastSpawnTime = -1;			// NOTE: 上次戰機重生時間
Intercepter_Colddown = 10 * 60;			// NOTE: 戰機重生冷卻時間
Intercepter_Min_combat_readiness = 65;	// NOTE: SAM-最小觸發條件-民怨值, < 0
Intercepter_Max_combat_readiness = 96;	// NOTE: SAM-最大觸發條件-民怨值, < 0
SAM_LastSpawnTime = -1;					// NOTE: 上次SAM-重生時間
SAM_Min_combat_readiness = 70;     // NOTE: SAM-最小觸發條件-民怨值, < 0
spawn_range_SAM   = [5000, sqrt 2 / 2 * worldSize]; // NOTE: 生成距離最近藍軍FOB據點, 單位公尺 [MIN, MAX]
spawn_range_Radar = [4000, sqrt 2 / 2 * worldSize]; // NOTE: 生成距離最近藍軍FOB據點, 單位公尺 [MIN, MAX]
checking_time = 5*60;          // NOTE: 生存檢查間格時間 : 5 分鐘.
respawn_time  = 15*60;         // NOTE: 重生時間 : 15 分鐘.
rearm_time    = 10*60;         // NOTE: 彈藥補給時間 10 分鐘.
random_addition_times = 5*60;  // NOTE: 最大誤差時間 : 5 分鐘.
PCAT_area_antiair_SAMVehicle_array = [];   // NOTE: 記錄所有防空車輛(非人員)

PCAT_area_antiair_Reset = {
	PCAT_area_antiair_Detected_Flag = false;
	SAM_LastSpawnTime = GET_TIME;
	//NOTE: 也許讓敵方飛機撤退?
	Intercepter_LastSpawnTime = GET_TIME;
};

//NOTE: 隱藏地形/關閉傷害
PCAT_Cleance = {
	params [
		["_centerPos", [0, 0, 0], [[]], [3]],
		["_radius", 0, [0]]
	];
	{
		_x switchLight "OFF";
		_x hideObjectGlobal true;
		_x allowDamage false;
	} forEach (nearestTerrainObjects [_centerPos, [], _radius, false, true]);	
};

//NOTE: 取得載具生成點, 遠離城鎮 > 2000m, 距離FOB [_min, _max]
PCAT_getOpforSpawnPoint = {
	params [
		["_min", 2000, [0]],
		["_max", 20000, [0]]
	];
	private _spawnsToCheck = sectors_opfor;
	if (!isNil "used_positions") then {
		_spawnsToCheck = sectors_opfor - used_positions;
	};
	private _maxIter = count _spawnsToCheck;
	private _didPass = false;
	private _sector  = "";
	if (_maxIter<=0) exitWith {"";};
	while {_maxIter >= 0} do {
		if (count _spawnsToCheck <= 0 or _maxIter<=0) exitWith {"";};
		_sector = selectRandom _spawnsToCheck;
		_currentPos = markerPos _sector;
		_distances  = GRLIB_all_fobs apply {_currentPos distance2d _x};
		_didPass = (_distances findIf {_x > _max} < 0) and (_distances findIf {_x < _min} < 0);
		_didPass = _didPass and (blufor_sectors findIf {(_currentPos distance2D (markerPos _x)) < 2000} < 0);
		if (_didPass) exitWith {_sector;};
		_spawnsToCheck = _spawnsToCheck - [_sector];
		_maxIter = _maxIter - 1;
	};
};

//取得地圖上定義的跑道起飛點
PCAT_Liberation_GetAllAirport = {
	if (missionNamespace getVariable ["PCAT_Liberation_All_Airbases", false] isEqualTo false) then { 
		private _All_airfields = [];
		if (count allAirports > 0) then {
			private _first = [getArray (configfile >> "CfgWorlds" >> worldname >> "ilsPosition"),getArray (configfile >> "CfgWorlds" >> worldname >> "ilsDirection")];
			_All_airfields pushbackunique _first;
			private _next = [];
			_sec = (configfile >> "CfgWorlds" >> worldname >> "SecondaryAirports");
			for "_i" from 0 to (count _sec - 1) do
			{
				_All_airfields pushbackunique [getarray ((_sec select _i) >> "ilsPosition"),getarray ((_sec select _i) >> "ilsDirection")];
			};
		};
		missionNamespace setVariable ["PCAT_Liberation_All_Airbases", _All_airfields]; 
	}; 
	_All_airfields = missionNamespace getVariable ["PCAT_Liberation_All_Airbases", []];
	_All_airfields select{
		!( ([sectors_allSectors, (_x # 0)] call BIS_fnc_nearestPosition) in (blufor_sectors + (missionNamespace getVariable ["GRLIB_all_fobs", []])));
	};
};

//在指定機場跑道上方50公尺內(+Z'10m, 5秒無敵時間防arma'ed)產生飛行載具, 並指派巡邏路徑點
PCAT_Liberation_spawnAndPatrolAtRunway = {
	params [["_pos", [0,0,0]], ["_dir", 0], ["_Patroldist", 5000], ["_type", "JS_JC_SU35"]];
	private _spawnLocation = [_pos, 8, 40, 10, 0, 10, 0] call BIS_fnc_findSafePos;
	private _spawnLocation_ASL = ATLToASL [_spawnLocation # 0, _spawnLocation # 1, 0.5];
	[_spawnLocation_ASL, 30] call PCAT_Cleance;
	private _veh = createVehicle [_type, _spawnLocation_ASL, [], 0, "NONE"];
	private _grp = createVehicleCrew _veh;
	(units _grp) joinSilent createGroup GRLIB_side_enemy;
	if !(isNull _veh) then {
		_veh allowDamage false;
		_veh setDir -(asin _dir);
		_veh setVariable ["KP_liberation_preplaced", true, true];
		_veh addEventHandler ["Killed",{deleteVehicle (_this select 0);}];//NOTE: 有時候AI就喜歡互撞...移除殘骸淨空跑道
		_veh spawn {sleep 5;_this allowDamage true;};
		_veh spawn {
			sleep 60 + (random 25 max 5);//NOTE: 等待AI初始化完畢
			_vel = velocity _this;
			_pos = getPosATL _this;
			if (_pos # 2 < 50) then {//NOTE: VTOL式彈射不爭氣的垃圾AI飛行員
				_this setPos (_this modelToWorld [0,0,100]);
				sleep 0.5;
				_this setVelocity (((vectorDir _this) vectorMultiply 80) vectorAdd [0,0,100]);
			};
		};
		_grp = (group (driver _veh));
		//NOTE: 洩漏雷達已知目標資訊, 自由開火 + 脫離隊形, 接戰 or 巡羅
		(listRemoteTargets GRLIB_side_enemy) apply {_grp reveal [_x # 0, 4]};
		[_grp, _pos, _Patroldist] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
	};
};

//在指定的座標上方產生飛行載具, 並指派巡邏路徑點
PCAT_Liberation_spawnAndPatrol = {
	params [["_pos", [0,0,0]], ["_patrolPos", [0, 0, 0]], ["_dist", 1000], ["_Patroldist", 5000], ["_type", "JS_JC_SU35"]];
	private _spawnLocation = _pos getPos [_dist, random 360];
	_spawnLocation = [_spawnLocation select 0, _spawnLocation select 1, random 1000 min 500];
	private _planeInfo = [_spawnLocation, _spawnLocation getDir _pos, _type, GRLIB_side_enemy] call BIS_fnc_spawnVehicle;
	private _grp = _planeInfo select 2;
	(units _grp) joinSilent createGroup GRLIB_side_enemy;
	if (isNull (_planeInfo # 0)) exitWith {};
	//NOTE: 洩漏雷達已知目標資訊, 自由開火 + 脫離隊形, 接戰 or 巡羅
	(_planeInfo # 0) setVariable ["KP_liberation_preplaced", true, true];
	[_planeInfo # 0, _pos, _Patroldist] spawn {
		params ["_veh", "_pos", "_Patroldist"];
		waitUntil {sleep 1;!(isNull _veh) and (alive (driver _veh)) or !(alive _veh);};
		if !(alive _veh) exitWith {};
		_grp = (group (driver _veh));
		(listRemoteTargets GRLIB_side_enemy) apply {_grp reveal [_x # 0, 4]};
		[_grp, _pos, _Patroldist] call BIS_fnc_taskPatrol;
		_grp setCombatMode "RED";
	};
	_planeInfo select 0;
};

// NOTE: 建立防空小組, 並設定若成員不存在也不刪除小組物件.
//private _group = createGroup [GRLIB_side_enemy, false];
//NOTE: 等待KPLIB初始化完乘後進行防空腳本
waitUntil {sleep 10;KPLIB_init};  //wait for KP init
waitUntil {sleep  1;GET_TIME > 0 }; //wait for mission init
"區域防空系統以上線." remoteExec ["systemChat", Dedicated_RM_machineID];
PCAT_DEBUG_INIT = true;//For debug purpose
//NOTE: 紅方雷達 && 紅方防空
0 spawn {
	while {true} do {
		//NOTE: 雷達轉向 + 傷害判定(組員跳機/失能)
		{
			_AiUnit = crew _x;
			if (count _AiUnit > 0) then {
				_AiUnit lookAt (_x getRelPos [100, random 360]);
			};
			if (count(_AiUnit) <= 0 or !(alive (_AiUnit # 0))) then {_x setDamage 1;};//GA, GE
		} forEach PCAT_area_antiair_RadarVeh_array;
		//NOTE: 當乘員死亡 OR 下車時炸毀SAM
		{
			_AiUnit = gunner _x;
			if ( (isNull _AiUnit) or !(alive (_AiUnit)) ) then {_x setDamage 1;};//GA, GE
		} forEach PCAT_area_antiair_SAMVehicle_array;
		//NOTE: 讀取紅方資料鏈 + 過濾固定翼
		if (((listRemoteTargets GRLIB_side_enemy) findIf {((_x # 0) isKindOf "Plane") and [side (_x # 0), GRLIB_side_enemy] call BIS_fnc_sideIsEnemy}) > 0) then {
			PCAT_area_antiair_Detected_Flag = true;
		};
		uiSleep 15;
	};
};
while{ true } do {

	//TODO: PCAT-放置紅方雷達偵測空中固定翼 (弄真雷達)
	if (count (PCAT_area_antiair_RadarVeh_array) < PCAT_area_antiair_RadarVeh_spawnNum) then {
		_spawn_marker = spawn_range_Radar call PCAT_getOpforSpawnPoint; // NOTE: 使用 KPLIB 取得適當的生成點.
		if ( _spawn_marker != "" ) then { // NOTE: 生成點取得成功.
			private _spawn_pos = getMarkerPos [_spawn_marker]; // NOTE: 取得 Marker 的座標.
			_spawn_pos = [_spawn_pos, 5, 30, 5] call BIS_fnc_findSafePos;
			[ATLToASL [_spawn_pos # 0, _spawn_pos # 1, 0], 50] call KPLIB_fnc_createClearance; // NOTE: 清除周圍 10 公尺以供生成.
			private _veh = createVehicle ["O_Radar_System_02_F", _spawn_pos];
			if !(isNull _veh) then {
				_veh setVariable ["KP_liberation_preplaced", true, true];
				[_veh, createGroup [GRLIB_side_enemy, true], false, "" , opfor_aa] call BIS_fnc_spawnCrew;
				PCAT_area_antiair_RadarVeh_array pushBack _veh;
				(crew _veh) join PCAT_area_antiair_Radar_group;
				PCAT_area_antiair_Radar_group setCombatMode "RED";
				_veh addEventHandler ["Killed",{PCAT_area_antiair_RadarVeh_array = (PCAT_area_antiair_RadarVeh_array select {alive _x}) - [_this # 0];}];
			} else {
				//something bad happened...RRRRRRRRRRRRRR
			};
		};
	};
	//NOTE: 民怨值介於於最大/最低設定值, 產生 3 * SU-35 從敵方機場起飛 (從地圖設定檔取得"跑道起飛點" > 隨機選一個 + 高度偏移值(10 m/米) > 產生飛機 > 關閉傷害(5秒後恢復) > 等待 2 s/秒 > Loop直到FOR完成)
	if (PCAT_area_antiair_Detected_Flag and IS_TIMEOUT(Intercepter_LastSpawnTime, Intercepter_Colddown) and COMBAT_INTENSITY(Intercepter_Min_combat_readiness, Intercepter_Max_combat_readiness)) then {
		private _All_airfields = call PCAT_Liberation_GetAllAirport;
		PCAT_area_antiair_Detected_Flag = false;
		if (count(_All_airfields) > 0) then {
			0 spawn{
				sleep ((random 4 max 1) * 60);
				["TaskAssigned",["", "偵測到 Opfor 戰機升空"]] remoteExec ["bis_fnc_shownotification", Dedicated_RM_machineID];
			};
			[_All_airfields, Intercepter_FromAB_Num] spawn {
				params ["_airports", "_numOfplanes"];
				_TargetAB = _airports call BIS_fnc_selectRandom;
				_RandABPos = _TargetAB # 0;
				_ATLPosOfLaunchingPos = ATLToASL [_RandABPos # 0, _RandABPos # 1, 0.1]; // ConvToAbsoluteHeight (Relative Position +Z'0.1, ATL) -> ASL
				for "_i" from 1 to _numOfplanes do {
					[_ATLPosOfLaunchingPos, (_TargetAB # 1 ) # 0] call PCAT_Liberation_spawnAndPatrolAtRunway;
					sleep 5;
				};
			};
			Intercepter_LastSpawnTime = GET_TIME;
		};
	};
	//NOTE: 民怨值低於最大設定值, 產生 3 * SU-35 從地圖邊界 5 公里外向地圖內飛(巡邏路徑點)
	if (PCAT_area_antiair_Detected_Flag and IS_TIMEOUT(Intercepter_LastSpawnTime, Intercepter_Colddown) and COMBAT_INTENSITY(Intercepter_Max_combat_readiness, 1E3)) then {
		Intercepter_LastSpawnTime = GET_TIME;
		PCAT_area_antiair_Detected_Flag = false;
		[Intercepter_CAP_Num] spawn {
			params ["_numOfplanes", ["_Margin", 5000]];
			_RadiusOfMap = sqrt 2 / 2 * worldSize;
			_center = [_RadiusOfMap, _RadiusOfMap , 0];
			for "_i" from 1 to _numOfplanes do {
				[_center, _center, _Margin+_RadiusOfMap] call PCAT_Liberation_spawnAndPatrol;
				sleep 2;
			};
			0 spawn{
				sleep ((random 2 max 1) * 60);
				["TaskAssigned",["", "偵測到 Opfor 空中攔截機"]] remoteExec ["bis_fnc_shownotification", Dedicated_RM_machineID];
			};
		};
	};
	//NOTE: 比對Timestamp, 檢查重生條件(乘載員群組沒人倖存), 觸發條件: 民怨值
	private _NumOfSAMwillBeSpawned = abs(floor((combat_readiness - SAM_Min_combat_readiness)/10)) + 0;//max 5 -> 3
	if (IS_TIMEOUT(SAM_LastSpawnTime, respawn_time + random random_addition_times) and combat_readiness >= SAM_Min_combat_readiness and (({ side _x == GRLIB_side_enemy } count PCAT_area_antiair_SAMVehicle_array) < _NumOfSAMwillBeSpawned)) then {
		for "_i" from 1 to (_NumOfSAMwillBeSpawned-(count PCAT_area_antiair_SAMVehicle_array)) do { //NOTE: 我喜歡每次都生在不同點上 :D
			_spawn_marker = spawn_range_SAM call PCAT_getOpforSpawnPoint; // NOTE: 使用 KPLIB 取得適當的生成點.
			if ( _spawn_marker != "" ) then { // NOTE: 生成點取得成功.
				private _spawn_pos = getMarkerPos [_spawn_marker]; // NOTE: 取得 Marker 的座標.
				_spawn_pos = [_spawn_pos, 5, 30, 5] call BIS_fnc_findSafePos;
				[[_spawn_pos # 0, _spawn_pos # 1, 0] , 30] call KPLIB_fnc_createClearance; // NOTE: 清除周圍 10 公尺以供生成.

				// NOTE: 生成 SAM 並補充組員.
				private _veh = createVehicle [sam_classname, _spawn_pos];
				[_veh, createGroup [GRLIB_side_enemy, true], false, "" , opfor_aa] call BIS_fnc_spawnCrew;
				(crew _veh) join PCAT_area_antiair_group;
				PCAT_area_antiair_SAMVehicle_array pushBack _veh;

				//NOTE: 使 SAM 載具駕駛失能
				if (alive (driver _veh)) then {
					(driver _veh) disableAI "PATH";
				};


				//NOTE: SAM被摧毀後自動從列表中刪除
				_veh setVariable ["KP_liberation_preplaced", true, true];
				_veh addEventHandler ["Killed",{PCAT_area_antiair_SAMVehicle_array = (PCAT_area_antiair_SAMVehicle_array select {alive _x}) - [_this # 0];}];

				// NOTE: : 設定當 SAM 彈藥用盡時, 會等待 rearmed_time 秒後, 自動進行補給.
				_veh addEventHandler ["Fired", {
					params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo","_magazine","_projectile", "_gunner"];
					if( ! someAmmo _unit ) then {
						[_unit] spawn {
							params ["_unit"];
							sleep (rearm_time + random random_addition_times);
							_unit setVehicleAmmo 1;
						};
					};
				}];
				// NOTE: 當有非紅方人員上車後, 進入自毀倒數.
				_veh addEventHandler ["GetIn", {
					params ["_vehicle", "_role", "_unit", "_turret"];
					if( side _unit != GRLIB_side_enemy ) then {
						//"偵測未授權人員進入, 車輛 30 秒後進行自毀." remoteExec ["hint",_unit];
						_vehicle spawn {
							sleep 30;
							_this setDamage 1;
						};
					};
				}];
				// NOTE: 當砲手陣亡, 駕駛轉為砲手.
				(gunner _veh) addEventHandler["Killed", {
					params ["_unit", "_killer", "_instigator", "_useEffects"];
					private _veh = vehicle _unit;
					private _driver = driver _veh;
					if( alive _driver) then {
						_driver moveOut _veh;
						_driver moveInGunner _veh;
					}
				}];
				PCAT_area_antiair_group setCombatMode "YELLOW"; // 保持陣型, 自由開火.
				//systemChat "敵方已增援防空單位.";
				SAM_LastSpawnTime = GET_TIME;
			} else { // 生成點取得失敗
				"敵方防空單位無法增援." remoteExec ["hint", -2];
				//["Could not find position for create anti air base", "ERROR"] call KPLIB_fnc_log;
			};
			sleep 2;
		};
	};

	/* 以添加 TIMEOUT 標籤 + IF 檢查
	// TODO: 待 ArmA 3 v2.10, 提供　Group 的 Event Handler 後改寫.
	waitUntil{// 每 checking_time 檢查一次組員, 若有倖存則重新等待.
		sleep checking_time; // 檢查間隔.
		// NOTE: 當敵方沒有防空車輛時, 結束等待, 進入重生 cd 時間. 移至SAM生城IF....
		({ side _x == GRLIB_side_enemy } count PCAT_area_antiair_SAMVehicle_array) == 0
	};
	// NOTE: 結束等待, 並進入防空小組生成冷卻時間.
	sleep (respawn_time + random random_addition_times); // 重生時間
	//*/
	sleep checking_time;
};

/* 願望清單
70%警戒值以上開始觸發
20分鐘檢查一次 生2台區域防空
10分鐘偵測補彈藥
80%警戒值每上升10% +1台
紅方據點 每少於總數的2/10  +1台

會有 submission，解完會提示概略範圍
被摧毀後重設檢查時間 

區域防空無法移動或被移動
區域防空周圍無防禦兵力

只出在距離藍方據點起碼 5 公里-10公里間

空中攔截：
觸發條件：
警戒值大於64%並且紅方雷達偵測到空中固定翼

警戒值65～95%
生成2台戰機
敵人飛機生成在敵人據點機場從跑道上起飛並攔截
警戒值96%以上生成
3台戰機 從地圖邊界外5公里處生成並執行攔截
觸發後進入10分鐘冷卻
敵人戰機：su-35
//*/