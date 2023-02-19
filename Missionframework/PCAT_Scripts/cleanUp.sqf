
/* ----------------------------------------------------------------------------
    cleanUp.sqf
    
    Execution: spawn
    
    Description: 清理多餘物件，降低運算負擔

    Parameters:
        <ARRAY of BOOL>
        [
            "_1_Blood_Stains",
            "_2_particlesource",
            "_3_Dead",
            "_4_Mines",
            "_5_Ruins",
            "_6_Craters",
            "_7_Dropped_Items",
            "_8_Static_Weapon",
            "_9_Empty_Groups",
            "_10_Empty_Vehicles",
            "_11_emptyDetector_MP_triggers"
        ]

    Optional:

    Returns:
        <BOOL>         - true, if function is successed.

    Author:
        Original : [GR]GEORGE F
        Modified : Peckcat

    Examples:
        [] call (compileScript ["cleanUp.sqf"]);


---------------------------------------------------------------------------- */
//________________ GF Cleanup Script _____________
diag_log "//________________ GF Cleanup Script Start _____________";
if (!isServer) exitWith { true };

//________________ Settings _____________
params [
    ["_1_Blood_Stains"               , true  , [true ]],
    ["_2_particlesource"             , true  , [true ]],
    ["_3_Dead"                       , true  , [true ]],
    ["_4_Mines"                      , false , [false]],
    ["_5_Ruins"                      , true  , [true ]],
    ["_6_Craters"                    , false , [false]],
    ["_7_Dropped_Items"              , true  , [true ]],
    ["_8_Static_Weapon"              , false , [false]],
    ["_9_Empty_Groups"               , true  , [true ]],
    ["_10_Empty_Vehicles"            , false , [false]],
    ["_11_emptyDetector_MP_triggers" , false , [false]]
];


//________________ Set true to delete or false  _____________

_1_Blood_Stains                 = true;
_2_particlesource               = true;
_3_Dead                         = true;
_4_Mines                        = false;
_5_Ruins                        = true;
_6_Craters                      = false;
_7_Dropped_Items                = true;
_8_Static_Weapon                = false;
_9_Empty_Groups                 = true;
_10_Empty_Vehicles              = false;
_11_emptyDetector_MP_triggers   = false;

sleep 0.5;    //set the time , in how many second to delete again
"Cleanup Start" remoteExec ["hint", remoteExecutedOwner];
if (_1_Blood_Stains) then {
    // This is for my new upcoming script Blood Stains , you can add here any item that you want to be deleted
   // hint"_1_Blood_Stains";
    {deleteVehicle _x} count ((allMissionObjects "BloodSplatter_01_Large_New_F")+
    (allMissionObjects "BloodSplatter_01_Medium_New_F")+
    (allMissionObjects "BloodSplatter_01_Small_New_F")+
    (allMissionObjects "BloodSpray_01_New_F")+
    (allMissionObjects "BloodPool_01_Large_New_F")+
    (allMissionObjects "BloodPool_01_Medium_New_F")+
    (allMissionObjects "BloodTrail_01_New_F")+
    (allMissionObjects "UserTexture1m_F")+
    (allMissionObjects "UserTexture_1x2_F"));
    sleep 0.5;
};


if (_2_particlesource) then {
   // hint"_2_particlesource";
    {deleteVehicle _x;} forEach(allMissionObjects "#particlesource");
    sleep 0.5;
};


if (_3_Dead) then {
   // hint"_3_Dead";
    {deleteVehicle _x;} count allDead;
    sleep 0.5;
};


if (_4_Mines) then {
   // hint"_4_Mines";
    { deleteVehicle _x } forEach allMines;
    sleep 0.5;
};


if (_5_Ruins) then {
   // hint"_5_Ruins";
    { deleteVehicle _x } forEach (allMissionObjects "ruins");
    sleep 0.5;
};


if (_6_Craters) then {
   // hint"_6_Craters";
    {deleteVehicle _x } forEach ((allMissionObjects "Crater")+
    (allMissionObjects "CraterLong")+
    (allMissionObjects "CraterLong_small"));
    sleep 0.5;
};


if (_7_Dropped_Items) then {

    // hint"_7_Dropped_Items";
    { deleteVehicle _x  } forEach (allMissionObjects "WeaponHolder");
    //"groundWeaponHolder"            "WeaponHolderSimulated"
    sleep 0.5;
};


if (_8_Static_Weapon) then {
   // hint"_8_Static_Weapon";
    { deleteVehicle _x } forEach (allMissionObjects "staticWeapon");
    sleep 0.5;
};


if (_9_Empty_Groups) then {
   // hint"_9_Empty_Groups";
    {if ((count units _x) isEqualTo 0) then {deleteGroup _x}} count allGroups;
    sleep 0.5;
};


if (_10_Empty_Vehicles) then {
   // hint"_10_Empty_Vehicles";
    _vehicles = nearestObjects [player, ["Car","Tank","Air","Ship"], 9999];
    {
    if (count crew vehicle _x == 0) then {deleteVehicle _x};
    } forEach _vehicles;
    sleep 0.5;
};


if (_11_emptyDetector_MP_triggers) then {
   // hint"_11_emptyDetector_MP_triggers";
    { deleteVehicle _x } forEach (allMissionObjects "emptyDetector");
    sleep 0.5;
};

diag_log "//________________ GF Cleanup Script End _____________";
hint "Cleanup Complete";
"Cleanup Complete" remoteExec ["hint", remoteExecutedOwner];

true



//________________  Author : [GR]GEORGE F ___________ 27.04.18 _____________

/*
________________ GF Cleanup Script ________________

https://forums.bohemia.net/forums/topic/216359-gf-cleanup-script/

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /*
means that it is disabled , so there is no need to delete the extra lines.

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain collours to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing .

For the Compilation List of my GF Scripts , you can search in:
https://forums.bohemia.net/forums/topic/215850-compilation-list-of-my-gf-scripts/
*/