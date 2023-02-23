/* opfor_mobile_anti_air.sqf
 *
 * Desc: 自動生成可移動式 SAM 並以 liberation 內的 opfor_point (物件類型:Marker) 做為生成點
 *       生成點的取得方式以 KPLIB_fnc_getOpforSpawnPoint 取得.
 *
 * Note: _blu_point = [getPos _point] call KPLIB_fnc_getNearestBluforObjective; // 取得距離 _point 最近的藍方據點座標為 _blu_point
 *       _blu_point distance (getPos _point);  // 計算 _blu_point 到 _point 之間的距離.
 *
 * Usage Example : execVM "opfor_mobile_anti_air.sqf";    // in init.sqf
 */
if (!isServer) exitWith {};// NOTE: 如果不是伺服器端則退出.

PCAT_is_area_antiair_on      = false;
PCAT_area_antiair_group      = createGroup [GRLIB_side_enemy, false]; // NOTE: 建立防空小組, 並設定若成員不存在也不刪除小組物件.
PCAT_area_antiair_vehs_arr   = [];            // NOTE: 記錄所有防空車輛(非人員)

_sam_classname = "B_Truck_02_CAMM_F";   // CAMM 25KM
//_sam_classname = "B_Truck_02_CAMM_ER_F"; // CAMM 45KM
_sam_num       = 1;                           // NOTE: 要生成的 SAM 的數量
_sam_max_ammo  = 12;                          // NOTE: 防空載具最大彈量.
_sam_init_ammo = 5;                           // NOTE: 防空載具初始彈量.
_sam_random_addition_ammo = 3;                // NOTE: 防空載具彈藥量隨機誤差.

_spawn_range   = [3000, 10000];               // NOTE: 生成距離最近藍軍據點, 單位公尺 [MIN, MAX]

_checking_time = 5*60;                        // NOTE: 生存檢查間格時間 : 5 分鐘.
_respawn_time  = 25*60;                       // NOTE: 重生時間 : 25 分鐘.
_rearm_time    = 10*60;                       // NOTE: 彈藥補給時間 10 分鐘.
_random_addition_times = 5*60;                // NOTE: 最大誤差時間 : 5 分鐘.


while{ true } do {
        sleep (_respawn_time + random _random_addition_times);// NOTE: 防空重生冷卻時間.

        _spawn_marker = _spawn_range call KPLIB_fnc_getOpforSpawnPoint; // NOTE: 使用 KPLIB 取得適當的生成點.
        if ( _spawn_marker != "" ) then { // NOTE: 若生成點取得成功.
            "請注意!區域防空系統已上線!" remoteExec ["hint",0];
            PCAT_is_area_antiair_on = true;
            
            private _spawn_pos = getMarkerPos [_spawn_marker]; // NOTE: 取得 Marker 的座標.
            [_spawn_pos, 30] call KPLIB_fnc_createClearance; // NOTE: 清除周圍 10 公尺以供生成.

            // NOTE: 生成 SAM 並補充組員.
            for "_i" from 1 to _sam_num do{
                private _veh = createVehicle [_sam_classname, [_spawn_pos, 5, 30, 5] call BIS_fnc_findSafePos];

                // NOTE: 使用 opfor_aa 去生成乘組員.
                [_veh, PCAT_area_antiair_group, false, "" , opfor_aa] call BIS_fnc_spawnCrew;
                // createVehicleCrew _veh;

                (crew _veh) join PCAT_area_antiair_group;
                PCAT_area_antiair_vehs_arr pushBack _veh;
                _veh setVehicleAmmo ((_sam_init_ammo/_sam_max_ammo) + random (_sam_random_addition_ammo/_sam_max_ammo));

                // NOTE: : 設定當 SAM 彈藥用盡時, 會等待 rearmed_time 秒後, 自動進行補給.
                _veh addEventHandler ["Fired", {
                    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo","_magazine","_projectile", "_gunner"];
                    if( ! someAmmo _unit ) then {
                        [_unit] spawn {
                            params ["_unit"];
                            sleep (_rearm_time + random _random_addition_times);
                            _unit setVehicleAmmo (_sam_init_ammo/_sam_max_ammo + random (_sam_random_addition_ammo/_sam_max_ammo) );
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
            };

            // TODO: 設定防空邏輯
            PCAT_area_antiair_group setCombatMode "YELLOW"; // 保持陣型, 自由開火.

            // TODO: 待 ArmA 3 v2.10, 提供　Group 的 Event Handler 後改寫.
            waitUntil{// 每 _checking_time 檢查一次組員, 若有倖存則重新等待.
                sleep _checking_time; // 檢查間隔.
                // NOTE: 當沒有敵方防空車輛時, 結束等待.
                ({ side _x == GRLIB_side_enemy } count PCAT_area_antiair_vehs_arr) == 0
            };

            systemChat "確認區域防空已被殲滅";

            if( "PCAT_anti_air_last_seem_pos_marker" in allMapMarkers ) then{
                deleteMarker "PCAT_anti_air_last_seem_pos_marker";
                deleteMarker "PCAT_anti_air_last_seem_pos_zone";
            };
            //systemChat "敵方已增援防空單位.";
        } else { // 若生成點取得失敗
            PCAT_is_area_antiair_on = false;
            //systemChat "敵方防空單位無法增援.";
            //["Could not find position for create anti air base", "ERROR"] call KPLIB_fnc_log;
        };
};
