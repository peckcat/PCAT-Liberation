/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_removeAllEquips

    Description:
        [Lacal Variable]
        [Global Effect]
        Remove all equips form _entity.

    Parameters:
        _entity              - Unit(s) to remove.  <unit, units ARRAY, Group, Side>
    Optional:
        _default_uniform     - Default: "" <STRING>
    Returns:
        <BOOL>               - true, if function is successed.

    Author:
        Peckcat

    Examples:
        [player] call PCAT_fnc_removeAllEquips;
        [player,"rhs_uniform_FROG01_d"] call PCAT_fnc_removeAllEquips;
        [group player,"rhs_uniform_FROG01_d"] call PCAT_fnc_removeAllEquips;


---------------------------------------------------------------------------- */
params [
    "_entity",
    ["_default_uniform", "", [""]]
];

private _units = nil;

switch ( typeName _entity )  do {
    case "SIDE"  ;
    case "GROUP" : {
        _units = units _entity;
    };
    case "OBJECT": {
        _units = [_entity];
    };
    case "ARRAY" : {
        _units = _entity;
    };
};

{
    // 清除所有裝備
    removeHeadgear _x;                      // 清除頭部裝備
    removeGoggles _x;                       // 清除臉部裝備(眼鏡...等)
    removeAllAssignedItems _x;              // 清除可裝備的道具
    removeAllWeapons _x;                    // 清除主武器、副武器、發射器
    removeAllContainers _x;                 // 清除衣服、背心、背包
    
    if( !(_default_uniform isEqualTo "") ) then {
        _x addUniform _default_uniform;     // 給予特定制服
    };
} foreach _units;

true