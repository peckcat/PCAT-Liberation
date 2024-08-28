if (count(PCAT_area_antiair_SAMVehicle_array select {alive _x}) == 0) exitWith {
    ["Could not find unit for radar hunting mission", "ERROR"] call KPLIB_fnc_log;
    resources_intel = resources_intel + (GRLIB_secondary_missions_costs # 4);publicVariable "resources_intel";
    ["[PCAT_AA_mission]There's no suitable candidate.Please wait a few minutes."] remoteExec ["systemChat", [0, -2] select isDedicated]
};

_objective = PCAT_area_antiair_SAMVehicle_array;
array_secondary_objective_position_marker = [];

{
    _objective_pos = getPosATL _x;
    array_secondary_objective_position_marker pushBack [(((_objective_pos select 0) + 800) - random 1600), (((_objective_pos select 1) + 800) - random 1600), 0];
} forEach _objective;


publicVariable "array_secondary_objective_position_marker";
sleep 1;

GRLIB_secondary_in_progress = 0; publicVariable "GRLIB_secondary_in_progress";
[0] remoteExec ["PCAT_remote_call_intel"];

waitUntil {
    sleep 5;
    (PCAT_area_antiair_SAMVehicle_array findIf {alive _x}) == -1;
};
//TODO: 偵查子任務: 白狼-解完會提示概略範圍被摧毀後重設檢查時間
call PCAT_area_antiair_Reset;

combat_readiness = round (combat_readiness * (GRLIB_secondary_objective_impact+1));
stats_secondary_objectives = stats_secondary_objectives + 1;
sleep 1;
[] spawn KPLIB_fnc_doSave;
sleep 3;

[1] remoteExec ["PCAT_remote_call_intel"];

GRLIB_secondary_in_progress = -1; publicVariable "GRLIB_secondary_in_progress";

//execVM "PCAT_Scripts\Radar_hunting.sqf";
//PCAT_area_antiair_SAMVehicle_array

//if (resources_intel < 15) exitwith {};
//resources_intel = resources_intel - 15;publicVariable "resources_intel";
//"PCAT_Scripts\Radar_hunting.sqf" remoteExec ["execVM",2];