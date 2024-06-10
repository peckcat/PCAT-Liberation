/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_getNearestFob

    Description:
        Check if player is inside FOB.

    Parameters:
        _unit           - <Unit>

    Optional:

    Returns:
        <BOOL>         - true, if player insdie FOB.

    Author:
        Peckcat

    Examples:
        player call PCAT_fnc_hint;


---------------------------------------------------------------------------- */

params ["_unit"];

[GRLIB_all_fobs, _unit] call BIS_fnc_nearestPosition;