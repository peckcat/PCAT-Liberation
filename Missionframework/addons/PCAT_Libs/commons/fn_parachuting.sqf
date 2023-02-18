/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_parachuting

    Description:
        給予指定單位降落傘後，傳送到特定目標以進行跳傘。
        TODO: 檢查『Backpack on chest』模組已進行外操作
        

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
    ["_radius", 100, [0]]
];
_position = _position vectorAdd [random _radius,random _radius,_altitude];

_backpack = backpack _unit;
_chestpack = [_unit] call zade_boc_fnc_chestpack;

// "zade_boc" in activatedAddons;  檢查背包前背的腳本 Backpack on chest
// 檢查並設置降落傘
if( _backpack isEqualTo "" ) then {
    _unit addBackpack "B_Parachute";
}else{
    if( !(_backpack isKindof "B_Parachute") ) then {
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

_unit setPos _position;

true