/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_parachutingDialog

    Description:
        提供介面選擇目標地點與高度，並以 PCAT_fnc_parachuting 進行跳傘。
        LE,LA

    Parameters:
        "_unit"

    Optional:

    Returns:
        <BOOL>         - true, if function is successed.

    Author:
        Peckcat

    Examples:
        player call PCAT_fnc_parachutingDialog;
        _unit call PCAT_fnc_parachutingDialog;
---------------------------------------------------------------------------- */
params ["_unit"];
openMap true;

_map_click_event = addMissionEventHandler [
    "MapSingleClick", 
    {
        params ["_units", "_pos", "_alt", "_shift"];
        _thisArgs params ["_unit"];
        PCAT_Parachuting_Pos = _pos;

        _marker = createMarkerLocal ["parachuting_marker", [0,0,0]];
        _marker setMarkerTypeLocal "Select";
        "parachuting_marker" setMarkerPosLocal PCAT_Parachuting_Pos;

        _display = createDialog ["PCAT_Parachuting_Dialog",true];
        _display displayAddEventhandler [
            "Unload",
            {
                params ["_display", "_exitCode"];
                if( _exitCode == 1) then {
                    PCAT_Parachuting_Altitute = sliderPosition 3200;
                    openMap false;
                };
                deleteMarkerLocal "parachuting_marker";
            }
        ];
    },
    [_unit]
];
[
    { visibleMap == false },
    {
        params ["_unit","_map_click_event"];
        if( !isNil "PCAT_Parachuting_Altitute" ) then {
            [_unit, PCAT_Parachuting_Pos, PCAT_Parachuting_Altitute] call PCAT_fnc_parachuting;
        };
        PCAT_Parachuting_Pos = nil;
        PCAT_Parachuting_Altitute = nil;
        removeMissionEventHandler ["MapSingleClick", _map_click_event]; 
    },
    [_unit, _map_click_event]
] call CBA_fnc_waitUntilAndExecute;

true