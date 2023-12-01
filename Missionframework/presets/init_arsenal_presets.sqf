switch (KP_liberation_arsenal) do {
    case   1: { [] call compileScript [ "presets\arsenal\custom.sqf", true]; };
    case   2: { [] call compileScript [ "presets\arsenal\rhsusaf.sqf", true]; };
    case   3: { [] call compileScript [ "presets\arsenal\3cbBAF.sqf", true]; };
    case   4: { [] call compileScript [ "presets\arsenal\gm_west.sqf", true]; };
    case   5: { [] call compileScript [ "presets\arsenal\gm_east.sqf", true]; };
    case   6: { [] call compileScript [ "presets\arsenal\csat.sqf", true]; };
    case   7: { [] call compileScript [ "presets\arsenal\unsung.sqf", true]; };
    case   8: { [] call compileScript [ "presets\arsenal\sfp.sqf", true]; };
    case   9: { [] call compileScript [ "presets\arsenal\bwmod.sqf", true]; };
    case  10: { [] call compileScript [ "presets\arsenal\vanilla_nato_mtp.sqf", true]; };
    case  11: { [] call compileScript [ "presets\arsenal\vanilla_nato_tropic.sqf", true]; };
    case  12: { [] call compileScript [ "presets\arsenal\vanilla_nato_wdl.sqf", true]; };
    case  13: { [] call compileScript [ "presets\arsenal\vanilla_csat_hex.sqf", true]; };
    case  14: { [] call compileScript [ "presets\arsenal\vanilla_csat_ghex.sqf", true]; };
    case  15: { [] call compileScript [ "presets\arsenal\vanilla_aaf.sqf", true]; };
    case  16: { [] call compileScript [ "presets\arsenal\vanilla_ldf.sqf", true]; };
    case  17: { [] call compileScript [ "presets\arsenal\custom_west.sqf", true]; };
    case  18: { [] call compileScript [ "presets\arsenal\custom_east.sqf", true]; };
    case  19: { [] call compileScript [ "presets\arsenal\custom_NATO.sqf", true]; };
    case  20: { [] call compileScript [ "presets\arsenal\custom_blufor.sqf", true]; };
    default   {
        GRLIB_arsenal_weapons = [];GRLIB_arsenal_magazines = [];GRLIB_arsenal_items = [];GRLIB_arsenal_backpacks = [];
    };
};