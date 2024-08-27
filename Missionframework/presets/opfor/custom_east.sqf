/*
    Needed Mods:
    - RHS AFRF

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "rhs_msv_emr_officer";                                  // Officer
opfor_squad_leader = "rhs_msv_emr_sergeant";                            // Squad Leader
opfor_team_leader = "rhs_msv_emr_efreitor";                             // Team Leader
opfor_sentry = "rhs_msv_emr_rifleman";                                  // Rifleman (Lite)
opfor_rifleman = "rhs_msv_emr_rifleman";                                // Rifleman
opfor_rpg = "rhs_msv_emr_LAT";                                          // Rifleman (LAT)
opfor_grenadier = "rhs_msv_emr_grenadier";                              // Grenadier
opfor_machinegunner = "rhs_msv_emr_arifleman";                          // Autorifleman
opfor_heavygunner = "rhs_msv_emr_machinegunner";                        // Heavy Gunner
opfor_marksman = "rhs_msv_emr_marksman";                                // Marksman
opfor_sharpshooter = "rhs_msv_emr_marksman";                            // Sharpshooter
opfor_sniper = "rhs_msv_emr_marksman";                                  // Sniper
opfor_at = "rhs_msv_emr_at";                                            // AT Specialist
opfor_aa = "rhs_msv_emr_aa";                                            // AA Specialist
opfor_medic = "rhs_msv_emr_medic";                                      // Combat Life Saver
opfor_engineer = "rhs_msv_emr_engineer";                                // Engineer
opfor_paratrooper = "rhs_msv_emr_RShG2";                                // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhs_tigr_msv";                                            // GAZ-233011
opfor_mrap_armed = "rhs_tigr_sts_msv";                                  // GAZ-233014 (Armed)
opfor_transport_helo = "RHS_Mi8mt_Cargo_vvs";                           // Mi-8MT (Cargo)
opfor_transport_truck = "RHS_Ural_MSV_01";                              // Ural-4320 Transport (Covered)
opfor_ammobox_transport = "RHS_Ural_Open_MSV_01";                       // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "RHS_Ural_Fuel_MSV_01";                              // Ural-4320 Fuel
opfor_ammo_truck = "rhs_gaz66_ammo_msv";                                // GAZ-66 Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "rhs_Flag_Russia_F";                                       // Flag

//---------------------------------------------------------------------------------------

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "rhs_msv_emr_at",                                                   // AT Specialist
    "rhs_msv_emr_at",                                                   // AT Specialist
    "rhs_msv_emr_aa",                                                   // AA Specialist
    "rhs_msv_emr_aa",                                                   // AA Specialist
    "rhs_msv_emr_rifleman",                                             // Rifleman
    "rhs_msv_emr_rifleman",                                             // Rifleman
    "rhs_msv_emr_rifleman",                                             // Rifleman
    "rhs_msv_emr_rifleman",                                             // Rifleman
    "rhs_msv_emr_arifleman",                                            // Autorifleman
    "rhs_msv_emr_arifleman",                                            // Autorifleman
    "rhs_msv_emr_marksman",                                             // Marksman
    "rhs_msv_emr_engineer",                                             // Engineer  
    "rhs_msv_emr_medic"                                                 // Medic
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "rhs_gaz66_zu23_msv",                                               // GAZ-66(ZU-23-2)
    "rhs_gaz66_zu23_msv",                                               // GAZ-66(ZU-23-2)
    "rhs_gaz66_zu23_msv",                                               // GAZ-66(ZU-23-2)
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "rhs_zsu234_aa",                                                    // ZSU-23-4V

    "rhssaf_army_o_m1151_olive_pkm",                                    // M1151 HMMWV (PKM)
    "rhssaf_army_o_m1151_olive_pkm",                                    // M1151 HMMWV (PKM)
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "rhsgref_BRDM2_msv",                                                // BRDM-2
    "rhsgref_BRDM2_msv",                                                // BRDM-2
    "rhsgref_BRDM2_msv",                                                // BRDM-2
    "rhs_btr80_msv",                                                    // BTR-80A
    "rhs_btr80_msv"                                                     // BTR-80A
];

//---------------------------------------------------------------------------------------

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "rhs_zsu234_aa",                                                    // ZSU-23-4V

    "rhssaf_army_o_m1151_olive_pkm",                                    // M1151 HMMWV (PKM)
    "rhssaf_army_o_m1151_olive_pkm",                                    // M1151 HMMWV (PKM)
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "rhs_btr80_msv",                                                    // BTR-80
    "rhs_btr80_msv",                                                    // BTR-80
    "rhs_bmp3mera_msv"                                                  // BMP-3 (Vesna-K/A)
];

// All enemy vehicles that can spawn as sector defenders and patrols but at  a high  enemy combat readiness (aggression levels).
opfor_vehicles = [
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "rhs_zsu234_aa",                                                    // ZSU-23-4V

    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_t80um",                                                        // T-80UM
    "rhs_t90sm_tv",                                                     // T-90SM
    "rhs_t90sm_tv",                                                     // T-90SM
    "rhs_t90sm_tv"                                                      // T-90SM
];

//---------------------------------------------------------------------------------------

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "rhs_gaz66_zu23_msv",                                               // GAZ-66(ZU-23-2)
    "rhs_gaz66_zu23_msv",                                               // GAZ-66(ZU-23-2)
    "rhs_gaz66_zu23_msv",                                               // GAZ-66(ZU-23-2)
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    "rhs_zsu234_aa",                                                    // ZSU-23-4V
    
    "rhssaf_army_o_m1151_olive_pkm",                                    // M1151 HMMWV (PKM)
    "rhssaf_army_o_m1151_olive_pkm",                                    // M1151 HMMWV (PKM)
    "rhs_tigr_sts_msv",                                                 // GAZ-233014 (Armed)
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhs_btr80a_msv",                                                   // BTR-80A
    
    "RHS_Mi8MTV3_vvs",                                                  // Mi-8MTV-3
    "RHS_Mi8MTV3_vvs",                                                  // Mi-8MTV-3
    "rhsgref_b_mi24g_CAS",                                              // Mi-24V
    "rhsgref_b_mi24g_CAS"                                               // Mi-24V
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high  enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    "O_APC_Tracked_02_AA_F",                                            // ZSU-39 Tigris
    
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_t72be_tv",                                                     // T-72B3
    "rhs_t72be_tv",                                                     // T-72B3
    "rhs_t72be_tv",                                                     // T-72B3
    "rhs_t72be_tv",                                                     // T-72B3
    "rhs_t80um",                                                        // T-80UM
    "rhs_t80um",                                                        // T-80UM
    "rhs_t90sm_tv",                                                     // T-90SM
    "rhs_t90sm_tv",                                                     // T-90SM
    "rhs_t90sm_tv",                                                     // T-90SM
    "rhs_mi28n_vvs",                                                    // Mi-28N
    "rhs_mi28n_vvs",                                                    // Mi-28N
    "RHS_Ka52_vvs",                                                     // Ka-52
    "RHS_Ka52_vvs"                                                      // Ka-52
];

//---------------------------------------------------------------------------------------

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "RHS_Ural_MSV_01",                                                  // Ural-4320 Transport (Covered)
    "RHS_Ural_MSV_01",                                                  // Ural-4320 Transport (Covered)
    "RHS_Ural_MSV_01",                                                  // Ural-4320 Transport (Covered)
    "RHS_Ural_MSV_01",                                                  // Ural-4320 Transport (Covered)
    
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhs_btr80a_msv",                                                   // BTR-80A
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)
    "rhs_bmp3mera_msv",                                                 // BMP-3 (Vesna-K/A)

    "RHS_Mi8MTV3_vvs",                                                  // Mi-8MTV-3
    "RHS_Mi8MTV3_vvs",                                                  // Mi-8MTV-3
    "rhsgref_b_mi24g_CAS",                                                    // Mi-24V
    "rhsgref_b_mi24g_CAS"                                                     // Mi-24V
];




// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_Mi8MTV3_vvs",                                                  // Mi-8MTV-3
    "RHS_Mi8MTV3_vvs",                                                  // Mi-8MTV-3
    "rhsgref_b_mi24g_CAS",                                                    // Mi-24V
    "rhsgref_b_mi24g_CAS",                                                    // Mi-24V
    "rhs_mi28n_vvs",                                                    // Mi-28N
    "RHS_Ka52_vvs"                                                      // Ka-52
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [ 
    "RHS_Su25SM_vvs",                                                   // Su-25
    "RHS_Su25SM_vvs",                                                   // Su-25
    "RHS_Su25SM_vvs",                                                   // Su-25
    "rhs_mig29sm_vvs",                                                  // MiG-29SM
    "rhs_mig29sm_vvs",                                                  // MiG-29SM
    "rhs_mig29sm_vvs",                                                  // MiG-29SM
    "JS_JC_SU35",                                                       // Su-35
    "JS_JC_SU35",                                                       // Su-35
    "RHS_T50_vvs_generic_ext"                                           // T-50
];
