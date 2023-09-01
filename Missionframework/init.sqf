
KPLIB_init = false;

// Version of the KP Liberation framework
KP_liberation_version = [0, 96, "7a"];

enableSaving [ false, false ];

if (isDedicated) then {debug_source = "Server";} else {debug_source = name player;};

[] call KPLIB_fnc_initSectors;
if (!isServer) then {waitUntil {!isNil "KPLIB_initServer"};};
[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "kp_liberation_config.sqf";
[] call compileFinal preprocessFileLineNumbers "presets\init_faction_presets.sqf";
[] call compileFinal preprocessFileLineNumbers "kp_objectInits.sqf";

// Activate selected player menu. If CBA isn't loaded -> fallback to GREUH
if (KPPLM_CBA && KP_liberation_playermenu) then {
    [] call KPPLM_fnc_postInit;
} else {
    [] execVM "GREUH\scripts\GREUH_activate.sqf";
};

[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_shared.sqf";

if (isServer) then {
    [] call compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
};

if (!isDedicated && !hasInterface && isMultiplayer) then {
    execVM "scripts\server\offloading\hc_manager.sqf";
};

if (!isDedicated && hasInterface) then {
    // Get mission version and readable world name for Discord rich presence
    [
        ["UpdateDetails", [localize "STR_MISSION_VERSION", "on", getText (configfile >> "CfgWorlds" >> worldName >> "description")] joinString " "]
    ] call (missionNamespace getVariable ["DiscordRichPresence_fnc_update", {}]);

    // Add EH for curator to add kill manager and object init recognition for zeus spawned units/vehicles
    {
        _x addEventHandler ["CuratorObjectPlaced", {[_this select 1] call KPLIB_fnc_handlePlacedZeusObject;}];
    } forEach allCurators;

    waitUntil {alive player};
    if (debug_source != name player) then {debug_source = name player};
    [] call compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";
} else {
    setViewDistance 1600;
};

// Execute fnc_reviveInit again (by default it executes in postInit)
if ((isNil {player getVariable "bis_revive_ehHandleHeal"} || isDedicated) && !(bis_reviveParam_mode == 0)) then {
    [] call bis_fnc_reviveInit;
};

////////////////////////////////
// ----- 清除並給予預設裝備 -----
////////////////////////////////
if ( isServer) then {
    private _playableUnits = playableUnits + switchableUnits;

    // 取得可建造步兵單位清單的第一個單位種類預設制服
    private _basic_uniform = PCAT_b_basic_uniform;
    {
        [
            [_x,_basic_uniform],
            {
                //  部分指令為 Local Argument, 所以只好用遠端執行
                //  因為玩家控制的單位，歸屬於該玩家電腦(Local Argument)，不用遠端，會無法移除
                params ["_unit","_basic_uniform"];

                // 清除所有裝備
                removeHeadgear _unit;                      // 清除頭部裝備
                removeGoggles _unit;                       // 清除臉部裝備(眼鏡...等)
                removeAllAssignedItems _unit;              // 清除可裝備的道具
                removeAllWeapons _unit;                    // 清除主武器、副武器、發射器
                removeAllContainers _unit;                 // 清除衣服、背心、背包

                _unit addUniform _basic_uniform;     // 給予特定制服
                _unit addWeapon "Rangefinder";    //  望遠鏡/夜視鏡歸類在武器......
                {
                    _unit linkItem _x;            //  新增並自動裝備特殊道具
                } foreach [
                    "ItemCompass",
                    "ItemGPS",
                    "ItemMap",
                    "ItemWatch"
                ];
            }
        ] remoteExec ["call",owner _x];  // 直接指定單位所屬玩家的電腦執行，避免執行不必要的廣播
        //  TODO : AI單位是否要特別過濾出來，不要丟到 remoteExec 去佔用資源?
    } foreach _playableUnits;
};
////////////////////////////////

KPLIB_init = true;

// Notify clients that server is ready
if (isServer) then {
    KPLIB_initServer = true;
    publicVariable "KPLIB_initServer";
};
