/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_getPrefixMarkers

    Description:
        取得所有給定前綴並以數字為尾的 Marker 名稱，並以陣列回傳。

    Parameters:
        _markerPrefix          - Prefix of map marker's name. <STRING>

    Optional:

    Returns:
        <ARRAY of Strings>     - 所有成功取得的 Marker 名稱

    Author:
        Peckcat

    Examples:
        "marker_" call PCAT_fnc_getPrefixMarkers;


---------------------------------------------------------------------------- */
params[
    [ "_markerPrefix", "", [""] ]
];

private _pattern = format["^%1\d+$",_markerPrefix];

private _markersArray = [];
{
    if( _x regexMatch _pattern ) then {
        _markersArray pushback _x;
    };
} foreach allMapMarkers;

_markersArray