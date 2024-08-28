if (isDedicated) exitWith {};

params ["_notiftype", ["_obj_position", getpos player]];

switch (_notiftype) do {
	case 0: {
		waitUntil {!isNil "array_secondary_objective_position_marker"};
		waitUntil {count array_secondary_objective_position_marker > 0};
		//waitUntil {array_secondary_objective_position_marker distance zeropos > 1000};
		["TaskAssigned", ["",markertext ([10000, array_secondary_objective_position_marker # 0] call KPLIB_fnc_getNearestSector) + " 附近發現敵人防空哨站"]] call BIS_fnc_showNotification;

		for "_i" from 0 to count(array_secondary_objective_position_marker)-1 do {
			_secondary_marker = createMarkerLocal [format ["secondarymarker_%1", _i], array_secondary_objective_position_marker # _i];
			_secondary_marker setMarkerColorLocal GRLIB_color_enemy_bright;
			_secondary_marker setMarkerTypeLocal "hd_unknown";

			_secondary_marker_zone = createMarkerLocal [format ["secondarymarkerzone%1", _i], array_secondary_objective_position_marker # _i];
			_secondary_marker_zone setMarkerColorLocal GRLIB_color_enemy_bright;
			_secondary_marker_zone setMarkerShapeLocal "ELLIPSE";
			_secondary_marker_zone setMarkerBrushLocal "FDiagonal";
			_secondary_marker_zone setMarkerSizeLocal [1500,1500];
		};
	};
	case 1: {
        ["TaskSucceeded", ["", "防空哨站已被摧毀"]] call BIS_fnc_showNotification;
        for "_i" from 0 to count(array_secondary_objective_position_marker)-1 do {
			deleteMarkerLocal format ["secondarymarker_%1", _i];
			deleteMarkerLocal format ["secondarymarkerzone%1", _i];
		};
        array_secondary_objective_position_marker = [];
    };
};
