/*
    PCAT_fnc_progressBar v1.0
    Parameter: (全可選，非必要)
        _countdownSeconds: default: 15       - 倒數秒數，到達後自動結束
        _text:             default: ""       - 顯示文字                    -┬-Available variables: params [_timeLeft, _args];
        _endCode:          defailt: {}       - 結束後執行的腳本            -┤                      
        _conditionCode:    default: {false}  - 條件式，回傳 true 時中斷    -┘ 
        _endCode:          default: {}       - 結束後執行的腳本            ---Available variables: params [_timeLeft, _args, _isInterrupt];
        _args:             default: []       - 參數

    Example:
        [10] call PCAT_fnc_progressBar;
        ----------------------------------------------------------------
        [10, "倒數中"] call PCAT_fnc_progressBar;
        ----------------------------------------------------------------
        isInterrupt = false;
        [
            30, "倒數中",
            {
                params ["_timeLeft", "_args"];
                hintSilent format["倒數 %1 秒", [_timeLeft, "MM:SS"] call BIS_fnc_secondsToString];
                missionNamespace getVariable ["isInterrupt",false]
            },
            {
                hintSilent "倒數結束";
                [] spawn { sleep 3; hintSilent""; }
            }
        ] call PCAT_fnc_progressBar;
        [] spawn { sleep 10; isInterrupt = true; };
        ----------------------------------------------------------------
        isInterrupt = false;
        [
            30, "倒數中",
            {
                params ["_timeLeft", "_args"];
                hintSilent format["倒數 %1 秒", [_timeLeft, "MM:SS"] call BIS_fnc_secondsToString];
                missionNamespace getVariable ["isInterrupt",false]
            },
            {
                params ["_timeLeft", "_args", "_isInterrupt"];
                if( _isInterrupt ) then {
                    hintSilent "倒數中斷";
                } else {
                    hintSilent "倒數結束";
                }
                [] spawn { sleep 3; hintSilent""; }
            }
        ] call PCAT_fnc_progressBar;
        [] spawn { sleep 10; isInterrupt = true; };
        ----------------------------------------------------------------
        [10, {
            params ["_timeLeft", "_args"];
            systemChat format ["_timeLeft: %1", _timeLeft];
            
            params ["_timeLeft", "_args"];
            private _text = text (format ["倒數中，剩餘 %1 秒", [_timeLeft, "MM:SS"] call BIS_fnc_secondsToString]);
            _text setAttributes  ["size", "0.8", "align", "center"];
            composeText [_text]
        }] call PCAT_fnc_progressBar;
 
*/
#define GET_TIME ([time, serverTime] select isMultiplayer)

params [
    ["_countdownSeconds", 15      , [0]     ],
    ["_text"            , ""      , [{}, "", text ""]],
    ["_conditionCode"   , {false} , [{}]    ],
    ["_endCode"         , {}      , [{}]    ],
    ["_args"            , []]
];

try{
    IS_PCAT_PROGRESS_BAR_ACTIVE = missionNamespace getVariable ["IS_PCAT_PROGRESS_BAR_ACTIVE", false];

    if( IS_PCAT_PROGRESS_BAR_ACTIVE ) exitWith { false };

    // 設立 IS_PCAT_PROGRESS_BAR_ACTIVE 變數，避免重複執行
    IS_PCAT_PROGRESS_BAR_ACTIVE = true;

    private _position_and_size = [
        0.400 * safezoneW + safezoneX,
        0.150 * safezoneH + safezoneY,
        0.200 * safezoneW,
        0.025 * safezoneH
    ];
    
    // 顯示背景
    PCAT_progressBar_background = findDisplay 46 ctrlCreate ["RscText", -1];
    PCAT_progressBar_background ctrlSetPosition _position_and_size;
    PCAT_progressBar_background ctrlSetBackgroundColor [0.2,0.2,0.2,0.7];
    PCAT_progressBar_background ctrlCommit 0;
    
    // 顯示進度條
    PCAT_progressBar = findDisplay 46 ctrlCreate ["RscProgress", -1];
    PCAT_progressBar ctrlSetPosition _position_and_size;
    PCAT_progressBar progressSetPosition 0;
    PCAT_progressBar ctrlCommit 0;

    // 顯示文字
    PCAT_progressBar_text = findDisplay 46 ctrlCreate ["RscStructuredText", -1];
    PCAT_progressBar_text ctrlSetPosition _position_and_size;
    PCAT_progressBar_text ctrlSetBackgroundColor [0,0,0,0];
    PCAT_progressBar_text ctrlSetTextColor [1,1,1,1];
    PCAT_progressBar_text ctrlCommit 0;

    private _startTime = GET_TIME;
    private _endTime = GET_TIME + _countdownSeconds;
    addMissionEventHandler [
        "EachFrame",
        {
            _thisArgs params[ "_start", "_end", "_text","_conditionCode", "_endCode", "_args" ];

            // 先行檢查是否以結束或中斷
            private _timeLeft = _end - GET_TIME; // 剩餘時間
            private _isInterrupt = [_timeLeft, _args] call _conditionCode;
            if ( !(_isInterrupt isEqualType true) ) then {
                throw format ["Invalid return type of conditionCode, expected: BOOL, received: %1", typeName _isInterrupt];
            };
            // 若條件式回傳 true 則中斷
            
            if ( _isInterrupt || {_timeLeft < 0} ) then {
                
                [_timeLeft, _args, _isInterrupt] call _endCode;

                ctrlDelete PCAT_progressBar_text;
                ctrlDelete PCAT_progressBar;
                ctrlDelete PCAT_progressBar_background;
                IS_PCAT_PROGRESS_BAR_ACTIVE = false;
                
                removeMissionEventHandler [_thisEvent, _thisEventHandler];
            }else {
                // 若未中斷，則更新進度條
                private _progress = linearConversion[ _start, _end, GET_TIME, 0, 1 ];
                private _progressText =text "";
                switch ( typeName _text ) do {
                    case "TEXT": {
                        _progressText = _text;
                    };
                    case "STRING":{
                        _progressText = parseText _text;
                    };
                    case "CODE": {
                        private _textFromCode = [_timeLeft, _args] call _text;
                        if( ! (_textFromCode isEqualType (text ""))) then {
                            throw "Invalid return type of text, expected: TEXT";
                        };
                        _progressText = _textFromCode;
                    };
                    default {
                        throw "Invalid type of text, expected: STRING, TEXT, CODE";
                    };
                };

                PCAT_progressBar_text ctrlSetStructuredText _progressText;
                PCAT_progressBar progressSetPosition _progress;
            };

        },
        [ _startTime, _endTime, _text, _conditionCode, _endCode, _args]
    ];
    true

} catch {
    ctrlDelete PCAT_progressBar_text;
    ctrlDelete PCAT_progressBar;
    ctrlDelete PCAT_progressBar_background;
    IS_PCAT_PROGRESS_BAR_ACTIVE = false;
    false
};
