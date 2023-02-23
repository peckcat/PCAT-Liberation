/* ----------------------------------------------------------------------------
    Function: PCAT_fnc_hint

    Description:
        單純作為function測試，使用 hint

    Parameters:
        _str           - <STRING>

    Optional:

    Returns:
        <BOOL>         - true, if function is successed.

    Author:
        Peckcat

    Examples:
        "hello, world" call PCAT_fnc_hint;


---------------------------------------------------------------------------- */

params ["_str"];
hint _str;

true