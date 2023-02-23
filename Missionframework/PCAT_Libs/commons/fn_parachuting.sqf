/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_parachuting

    Description:
        給予指定單位降落傘後，傳送到特定目標以進行跳傘。
        
    Compatible Mod: Backpack on Chest

    Parameters:
        "_unit",
        "_position",    2D
        "_altitude",
        "_radius"

    Optional:

    Returns:
        <BOOL>         - true, if function is successed.

    Author:
        Peckcat

    Examples:
        [player, getPos player, 2500] call PCAT_fnc_parachuting;


---------------------------------------------------------------------------- */
params [
    "_unit",
    "_position",
    ["_altitude", 2000,[0]],
    ["_radius", 100, [0]],
    ["_backpack_on_chest", false, [false]]
];
_position = _position vectorAdd [random _radius,random _radius,_altitude];
_backpack_on_chest = isNull (configFile >> "CfgPatches" >> "zade_boc");

_backpack = backpack _unit;
_chestpack = [_unit] call zade_boc_fnc_chestpack;

// "zade_boc" in activatedAddons;  檢查背包前背的腳本 Backpack on chest
// 檢查並設置降落傘
if(  (_backpack isEqualTo "") || (_backpack isEqualTo "ACE_ReserveParachute") ) then {
    _unit addBackpack "B_Parachute";
}else{
    if ( _backpack_on_chest ) then {
        // If no Backpack on Chest mod.
        hint "No backpack on chest mod.";
        _loadout = _unit call CBA_fnc_getLoadout;
        _unit addBackpack "B_Parachute";
        [
            { isTouchingGround player },
            {
                params ["_unit", "_loadout"];
                [_unit, _loadout] call CBA_fnc_setLoadout;
            },
            [_unit, _loadout]
        ] call CBA_fnc_waitUntilAndExecute;
    } else {
        if( !(_backpack isKindof "B_Parachute")) then {
            if ( _chestpack isEqualTo "" ) then {
                [_unit] call zade_boc_fnc_actionOnChest;
                _unit addBackpack "B_Parachute";
            }else{
                if ( _chestpack isKindof "B_Parachute") then {
                    [_unit] call zade_boc_fnc_actionSwap;
                }else{
                    hint "請捨棄其中一個背包\n以供裝備降落傘";
                    [
                        {hintSilent "";},   // Code to execute after delay.
                        nil,                // Arguments
                        3                   // Seconds to delay.
                    ] call CBA_fnc_waitAndExecute;
                    if (true) exitWith { false };
                };
            };
        };
    };
    
};

_unit setPos _position;

true