/*
        Array of classnames as strings <ARRAY>,
        Code to apply <CODE>,
            _this is an array of all objects matching the classnames
        Allow inheritance <BOOL> (default false)
*/
private _objectInits = [
    [  // 使回收站兼具维修设施功能, 可以使用滾輪選單, 直接完整維修周圍載具
        [KP_liberation_recycle_building],
        {
            // _this 是所有符合上述 classname 的物件陣列
            private _objs = _this;
            {
                _x addAction [
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

                                private _radius = 30;
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
            } foreach _objs;
        }
    ]
];

{
    private _set = _x;
    _x params ["_classes", "_initCode", ["_allowInheritance", false]];
    {
        private _class = _x;
        [
            _x,
            "init",
            _initCode,
            _allowInheritance,
            [],
            true
        ] call CBA_fnc_addClassEventHandler;
    } forEach _classes;
} forEach _objectInits;