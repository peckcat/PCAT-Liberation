/*
    Specific object init codes depending on classnames.

    Format:
    [
        Array of classnames as strings <ARRAY>,
        Code to apply <CODE>,
        Allow inheritance <BOOL> (default false)
    ]
    _this is the reference to the object with the classname

    Example:
        KPLIB_objectInits = [
            [
                ["O_soldierU_F"],
                {systemChat "CSAT urban soldier was spawned!"}
            ],
            [
                ["CAManBase"],
                {systemChat format ["Some human named '%1' was spawned!", name _this]},
                true
            ]
        ];
*/

KPLIB_objectInits = [
    [   // 使回收站兼具维修设施功能, 可以使用滾輪選單, 直接完整維修周圍載具
        [KP_liberation_recycle_building],
        {
            _this addAction [
                "<t color='#FFFF00'>-- 維修周遭載具 </t> <img size='2' image='\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa'/>",
                {
                    params ["_target", "_caller", "_actionId", "_arguments"]; // script
                    [
                        30,
                        {
                            params ["_timeLeft", "_args"];
                            private _text = text (format ["維修中，剩餘 %1 秒", [_timeLeft, "MM:SS"] call BIS_fnc_secondsToString]);
                            _text setAttributes  ["size", "0.8", "align", "center"];
                            composeText [_text]
                        },
                        {false},
                        {
                            params ["_timeLeft", "_args", "_isInterrupt"];
                            _args params ["_repairStation"];

                            private _radius = 20;
                            private _vehicles = _repairStation nearEntities [["Car","Tank","Air","Ship"], _radius];
                            _vehicles = [ [_vehicles]  , _vehicles ] select (_vehicles isEqualType []);
                            {
                                if (alive _x) then {
                                    _x setDamage 0;
                                };
                            } forEach _vehicles;
                        },
                        _target
                    ] call PCAT_fnc_progressBar;
                },
                nil,		// arguments
                -890,		// priority
                false,		// showWindow
                true,		// hideOnUse
                "",			// shortcut
                "build_confirmed == 0 && ((_this distance2D _target) < veh_action_distance) && (vehicle player == player)"
            ];
        }
    ],
    [
        ["RHS_su25_base"],
        {
            if ( (side _this) isEqualTo OPFOR ) then {
                _this setPylonLoadout [1, "rhs_mag_b8m1_s8t"];
                _this setPylonLoadout [2, "rhs_mag_b8m1_s8t"];
                _this setPylonLoadout [3, "rhs_mag_b8m1_s8df"];
                _this setPylonLoadout [4, "rhs_mag_b8m1_s8df"];
                _this setPylonLoadout [5, "rhs_mag_kh25ML"];
                _this setPylonLoadout [6, "rhs_mag_kh25MP"];
                _this setPylonLoadout [7, "rhs_mag_R73M"];
                _this setPylonLoadout [8, "rhs_mag_R73M"];
                _this setPylonLoadout [9, "rhs_mag_R60M"];
                _this setPylonLoadout [10, "rhs_mag_R60M"];
                _this setPylonLoadout [11, "rhs_ASO2_CMFlare_Chaff_Magazine_x4"];
            };
        },
        true
    ],
    [
        ["rhs_mig29s_base"],
        {
            if ( (side _this) isEqualTo OPFOR ) then {
                _this setPylonLoadout [1, "rhs_mag_R77M_AKU170_MIG29"];
                _this setPylonLoadout [2, "rhs_mag_R77M_AKU170_MIG29"];
                _this setPylonLoadout [3, "rhs_mag_b8m1_bd3_umk2a_s8df"];
                _this setPylonLoadout [4, "rhs_mag_b8m1_bd3_umk2a_s8t"];
                _this setPylonLoadout [5, "rhs_mag_R73M_APU73"];
                _this setPylonLoadout [6, "rhs_mag_R73M_APU73"];
                _this setPylonLoadout [7, "rhs_mag_ptb1500"];
                _this setPylonLoadout [8, "rhs_BVP3026_CMFlare_Chaff_Magazine_x2"];
            };
        },
        true
    ],
    // Make sure no AI can not enter any artillery vehicle's gunner role.
    [
        PCAT_allArtillery_classes,
        { 
            _this addEventHandler ["GetIn", {
                params ["_vehicle", "_role", "_unit", "_turret"];

                if( (!isPlayer _unit) && { _role isEqualTo "gunner" }) then {
                    systemChat "[PCAT] AI can not get in artillery gunner role !";
                    _unit leaveVehicle _vehicle;
                    moveOut _unit;
                };
            }];

            _this addEventHandler ["SeatSwitched", {
                params ["_vehicle", "_unit1", "_unit2"];

                _unit = gunner _vehicle;
                if( (!isPlayer _unit) && {!isNull _unit}) then {
                    private _veh = vehicle _unit;
                    systemChat "[PCAT] AI can not switch to artillery gunner role !";
                    _unit leaveVehicle _veh;
                    moveOut _unit;
                };
            }];
        }
    ],
    // Set KP logo on white flag
    [
        ["Flag_White_F"],
        {_this setFlagTexture "res\flag_kp_co.paa";}
    ],

    // Add helipads to zeus, as they can't be recycled after built
    [
        ["Helipad_base_F", "LAND_uns_Heli_pad", "Helipad", "LAND_uns_evac_pad", "LAND_uns_Heli_H"],
        {{[_x, [[_this], true]] remoteExecCall ["addCuratorEditableObjects", 2]} forEach allCurators;},
        true
    ],

    // Add ViV and build action to FOB box/truck
    [
        [FOB_box_typename, FOB_truck_typename],
        {
            [_this] spawn {
                params ["_fobBox"];
                waitUntil {sleep 0.1; time > 0};
                [_fobBox] call KPLIB_fnc_setFobMass;
                if ((typeOf _fobBox) isEqualTo FOB_box_typename) then {
                    [_fobBox] call KPLIB_fnc_setFobMass;
                    [_fobBox] remoteExecCall ["KPLIB_fnc_setLoadableViV", 0, _fobBox];
                };
                [_fobBox] remoteExecCall ["KPLIB_fnc_addActionsFob", 0, _fobBox];
            };
        }
    ],

    // Add FOB building damage handler override and repack action
    [
        [FOB_typename],
        {
            _this addEventHandler ["HandleDamage", {0}];
            [_this] spawn {
                params ["_fob"];
                waitUntil {sleep 0.1; time > 0};
                [_fob] remoteExecCall ["KPLIB_fnc_addActionsFob", 0, _fob];
            };
        }
    ],

    // Add ViV action to Arsenal crate
    [
        [Arsenal_typename],
        {
            [_this] spawn {
                params ["_arsenal"];
                waitUntil {sleep 0.1; time > 0};
                [_arsenal] remoteExecCall ["KPLIB_fnc_setLoadableViV", 0, _arsenal];
            };
        }
    ],

    // Add storage type variable to built storage areas (only for FOB built/loaded ones)
    [
        [KP_liberation_small_storage_building, KP_liberation_large_storage_building],
        {_this setVariable ["KP_liberation_storage_type", 0, true];}
    ],

    // Add ACE variables to corresponding building types
    [
        [KP_liberation_recycle_building],
        {_this setVariable ["ace_isRepairFacility", 1, true];}
    ],
    [
        KP_liberation_medical_facilities,
        {_this setVariable ["ace_medical_isMedicalFacility", true, true];}
    ],
    [
        KP_liberation_medical_vehicles,
        {_this setVariable ["ace_medical_isMedicalVehicle", true, true];}
    ],

    // Hide Cover on big GM trucks
    [
        ["gm_ge_army_kat1_454_cargo", "gm_ge_army_kat1_454_cargo_win"],
        {_this animateSource ["cover_unhide", 0, true];}
    ],

    // Make sure a slingloaded object is local to the helicopter pilot (avoid desync and rope break)
    [
        ["Helicopter"],
        {if (isServer) then {[_this] call KPLIB_fnc_addRopeAttachEh;} else {[_this] remoteExecCall ["KPLIB_fnc_addRopeAttachEh", 2];};},
        true
    ],

    // Add valid vehicles to support module, if system is enabled
    [
        KP_liberation_suppMod_artyVeh,
        {if (KP_liberation_suppMod > 0) then {KPLIB_suppMod_arty synchronizeObjectsAdd [_this];};}
    ],

    // Disable autocombat (if set in parameters) and fleeing
    [
        ["Man"],
        {
            if (!(GRLIB_autodanger) && {(side _this) isEqualTo GRLIB_side_friendly}) then {
                _this disableAI "AUTOCOMBAT";
            };
            _this allowFleeing 0;
        },
        true
    ]
];
