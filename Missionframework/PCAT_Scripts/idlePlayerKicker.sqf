#define GET_TIME ([time, serverTime] select isMultiplayer)
#define IDLE_TIMEOUT 1200

if (isServer) then {
    [
        "IDLE_PLAYER_DECTECTED",
        {
            // FIXME: Not work properly, especially in MP, and can not get the cticmdpassword
            params ["_idle_player"];

            private _fileName = "serverCommandPassword";
            [_fileName] call filext_fnc_open;
            [_fileName] call filext_fnc_read;
            private _ctiCmdPassword  = [_fileName, "CTI_PWD"] call filext_fnc_get; 
            [_fileName] call filext_fnc_close;

            private _cmd = format ["#KICK %1",name _idle_player];
            format ["玩家:%1, 因閒置過久而被剔除.", name _idle_player] remoteExecCall ["systemChat", 0, true];
            _ctiCmdPassword serverCommand _cmd;
        }
    ] call CBA_fnc_addEventHandler;
};

if (hasInterface) then {
    [
        {
            !isNull(findDisplay 46)
        },
        {
            PCAT_CTI_lastActionTime = missionNamespace getVariable ["PCAT_CTI_lastActionTime", GET_TIME];
            PCAT_CTI_isKickCountdown = missionNamespace getVariable ["PCAT_CTI_isKickCountdown", false];

            // Must wait until the display is created, so code in CBA_fnc_waitUntilExec.
            (findDisplay 46) displayAddEventHandler ["KeyDown", {
                PCAT_CTI_lastActionTime = GET_TIME;
            }];
            (findDisplay 46) displayAddEventHandler ["MouseButtonDown", {
                PCAT_CTI_lastActionTime = GET_TIME;
            }];
            

            // Wait, when the player is idle, then show the countdown.
            [{
                if( !PCAT_CTI_isKickCountdown && {(GET_TIME - PCAT_CTI_lastActionTime) >= IDLE_TIMEOUT} ) then {
                    PCAT_CTI_isKickCountdown = true;
                    [
                        IDLE_TIMEOUT,
                        {
                            params ["_timeLeft", "_args"];
                            private _text = text (format ["閒置過久，倒數 %1 秒後踢出", [_timeLeft, "MM:SS"] call BIS_fnc_secondsToString]);
                            _text setAttributes  ["size", "0.8", "align", "center"];
                            composeText [_text]
                        },
                        {
                            (GET_TIME - PCAT_CTI_lastActionTime) < IDLE_TIMEOUT
                        },
                        {
                            params ["_timeLeft", "_args", "_isInterrupt"];
                            PCAT_CTI_isKickCountdown = false;
                            if (!_isInterrupt) then {
                                ["IDLE_PLAYER_DECTECTED", player] call CBA_fnc_serverEvent;
                            };
                        }
                    ] call PCAT_fnc_progressBar;
                    [] spawn { sleep 10; _isInterrupt = true; };
                };
            }, 1] call CBA_fnc_addPerFrameHandler;
        }        
    ] call CBA_fnc_waitUntilAndExecute;
};