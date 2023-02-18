/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_getPrefixVariables

    Description:
        取得所有給定前綴並以數字為尾的變數，並以陣列回傳。

    Parameters:
        _prefix                - Prefix of variable's name. <STRING>

    Optional:
        _namespaces            - Default: missionNameSpace, variable's namespace. <Namespace>

    Returns:
        <ARRAY of Variables>   - 所有成功取得的變數

    Author:
        Peckcat

    Examples:
        "pos_" call PCAT_fnc_getPrefixVariables;


---------------------------------------------------------------------------- */
params [
    "_prefix",
    ["_namespace", missionNameSpace]
];
private _pattern = format["^%1\d+$",_prefix];

private _vars = [];
{
    if( _x regexMatch _pattern ) then {
        _vars pushback (_namespace getVariable _x);
    };
} foreach (allVariables _namespace);

_vars