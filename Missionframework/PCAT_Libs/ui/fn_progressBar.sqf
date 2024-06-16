/*
    PCAT_fnc_progressBar
    Parameter: (全可選，非必要)
        _endTime: 結束時間，預設倒數 15 秒
        _text: 顯示文字
        _endCode: 結束後執行的腳本
        _args: 腳本參數
    Example:
        [
            10,
            "<t size='0.8' align='center'>維修中，剩餘%1秒</t>",
            {
                params ["_extra_string"];
                hint  format ["維修完成,%1", _extra_string];
                [] spawn {
                    sleep 3;
                    hint "";
                };
            },
            ["結束腳本參數"]
        ] call PCAT_fnc_progressBar;

*/

params [
    ["_endTime", time + 15],
    ["_text",""],
    ["_endCode", {}],
    ["_args", nil]
];

if( _endTime < time ) then{
    _endTime = time + _endTime;
};
try{
    with uiNamespace do {
        IS_PCAT_PROGRESS_BAR_ACTIVE = uiNamespace getVariable ["IS_PCAT_PROGRESS_BAR_ACTIVE", false];

        if( IS_PCAT_PROGRESS_BAR_ACTIVE ) exitWith { false };
    
        IS_PCAT_PROGRESS_BAR_ACTIVE = true;

        private _position_and_size = [
            0.400 * safezoneW + safezoneX,
            0.150 * safezoneH + safezoneY,
            0.200 * safezoneW,
            0.025 * safezoneH
        ];
        
        PCAT_progressBar_background = findDisplay 46 ctrlCreate ["RscText", -1];
        PCAT_progressBar_background ctrlSetPosition _position_and_size;
        PCAT_progressBar_background ctrlSetBackgroundColor [0.2,0.2,0.2,0.7];
        PCAT_progressBar_background ctrlCommit 0;
        
        PCAT_progressBar = findDisplay 46 ctrlCreate ["RscProgress", -1];
        PCAT_progressBar ctrlSetPosition _position_and_size;
        PCAT_progressBar progressSetPosition 0;
        PCAT_progressBar ctrlCommit 0;

        PCAT_progressBar_text = findDisplay 46 ctrlCreate ["RscStructuredText", -1];
        PCAT_progressBar_text ctrlSetPosition _position_and_size;
        PCAT_progressBar_text ctrlSetBackgroundColor [0,0,0,0];
        PCAT_progressBar_text ctrlSetTextColor [1,1,1,1];
        PCAT_progressBar_text ctrlCommit 0;

        [  
            "PCAT_PROGRESS_BAR",
            "onEachFrame",
            {
                params[ "_start", "_end", "_text", "_endCode", "_args" ];
                _progress = linearConversion[ _start, _end, time, 0, 1 ];
                
                private _progress_text = parseText format[_text, round(_end - time)];
                (uiNamespace getVariable "PCAT_progressBar_text") ctrlSetStructuredText _progress_text;
                (uiNamespace getVariable "PCAT_progressBar") progressSetPosition _progress;

                if ( _progress > 1 ) then {
                    ctrlDelete (uiNamespace getVariable "PCAT_progressBar_text");
                    ctrlDelete (uiNamespace getVariable "PCAT_progressBar");
                    ctrlDelete (uiNamespace getVariable "PCAT_progressBar_background");

                    _args call _endCode;

                    uiNamespace setVariable ["IS_PCAT_PROGRESS_BAR_ACTIVE", false];
                    [ "PCAT_PROGRESS_BAR", "onEachFrame" ] call BIS_fnc_removeStackedEventHandler;
                };
            },
            [ time, _endTime, _text, _endCode, _args]
        ] call BIS_fnc_addStackedEventHandler;
        true
    };
} catch {
    ctrlDelete (uiNamespace getVariable "PCAT_progressBar_text");
    ctrlDelete (uiNamespace getVariable "PCAT_progressBar");
    ctrlDelete (uiNamespace getVariable "PCAT_progressBar_background");
    uiNamespace setVariable ["IS_PCAT_PROGRESS_BAR_ACTIVE", false];
};
