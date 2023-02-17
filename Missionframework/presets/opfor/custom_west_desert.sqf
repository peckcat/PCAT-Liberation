/*
    Needed Mods:
    - RHS USAF

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "rhsusf_usmc_marpat_d_officer";                         // Officer
opfor_squad_leader = "rhsusf_usmc_marpat_d_squadleader";                // Squad Leader
opfor_team_leader = "rhsusf_usmc_marpat_d_teamleader";                  // Team Leader
opfor_sentry = "rhsusf_usmc_marpat_d_rifleman_light";                   // Rifleman (Lite)
opfor_rifleman = "rhsusf_usmc_marpat_d_rifleman_m4";                    // Rifleman
opfor_rpg = "rhsusf_usmc_marpat_d_riflemanat";                          // Rifleman (LAT)
opfor_grenadier = "rhsusf_usmc_marpat_d_grenadier";                     // Grenadier
opfor_machinegunner = "rhsusf_usmc_marpat_d_autorifleman_m249";         // Autorifleman
opfor_heavygunner = "rhsusf_usmc_marpat_d_machinegunner";               // Heavy Gunner
opfor_marksman = "rhsusf_usmc_marpat_d_sniper_m110";                    // Marksman
opfor_sharpshooter = "rhsusf_usmc_marpat_d_sniper";                     // Sharpshooter
opfor_sniper = "rhsusf_usmc_marpat_d_sniper_M107";                      // Sniper
opfor_at = "rhsusf_usmc_marpat_d_smaw";                                 // AT Specialist
opfor_aa = "rhsusf_usmc_marpat_d_stinger";                              // AA Specialist
opfor_medic = "rhsusf_navy_marpat_d_medic";                             // Combat Life Saver
opfor_engineer = "rhsusf_usmc_marpatd_engineer";                        // Engineer
opfor_paratrooper = "rhsusf_socom_marsoc_teamleader";                   // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "rhsusf_m1043_d_s";                                        // Humvee
opfor_mrap_armed = "rhsusf_m1025_d_s_m2";                               // Humvee (Armed)
opfor_transport_helo = "rhsusf_CH53E_USMC_GAU21";                       // CH-53E (GAU-21)
opfor_transport_truck = "rhsusf_M1078A1P2_D_fmtv_usarmy";               // Ural-4320 Transport (Covered)
opfor_ammobox_transport = "rhsusf_M977A4_BKIT_usarmy_d";                // Ural-4320 Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "rhsusf_M978A4_BKIT_usarmy_d";                       // Ural-4320 Fuel
opfor_ammo_truck = "rhsusf_M977A4_AMMO_usarmy_d";                       // GAZ-66 Ammo
opfor_fuel_container = "B_Slingload_01_Fuel_F";                         // Taru Fuel Pod
opfor_ammo_container = "B_Slingload_01_Ammo_F";                         // Taru Ammo Pod
opfor_flag = "FLAG_US_F";                                               // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "rhsusf_usmc_marpat_d_rifleman_light",                                    // Rifleman
    "rhsusf_usmc_marpat_d_rifleman_light",                                    // Rifleman
    "rhsusf_usmc_marpat_d_rifleman_light",                                    // Rifleman
    "rhsusf_usmc_marpat_d_riflemanat",                                        // Rifleman (AT)
    "rhsusf_usmc_marpat_d_autorifleman_m249",                                 // Autorifleman
    "rhsusf_usmc_marpat_d_sniper_m110",                                       // Marksman
    "rhsusf_navy_marpat_d_medic",                                             // Medic
    "rhsusf_usmc_marpat_d_engineer"                                           // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
    "rhsusf_m1025_d_s_m2",                                                    // Humvee (Armed)
    "RHS_M6",
    "RHS_M6",
    "rhsusf_stryker_m1126_m2_d"
];

//---------------------------------------------------------------------------------------

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "RHS_M6",
    "RHS_M6",
    "rhsusf_m1025_d_s_m2",                                                    // Humvee M2 (Armed)
    "rhsusf_m1025_d_s_m2",                                                    // Humvee M2 (Armed)
    "rhsusf_m1025_d_s_m2",                                                    // Humvee M2 (Armed)
    "rhsusf_stryker_m1126_m2_d",                                              // Stryker M2
    "rhsusf_stryker_m1126_m2_d",                                              // Stryker M2
    "rhsusf_m113d_usarmy"                                                     // M113 M2
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
opfor_vehicles = [
    "rhsusf_m1025_d_s_m2",                                              // Humvee M2 (Armed)
    "rhsusf_m1043_d_s_m2",                                              // Humvee (Armed)
    "rhsusf_m1045_d_s",                                                 // Humvee (Armed)
    "rhsusf_m113d_usarmy_supply",                                       // M113 50cal supply
    "rhsusf_m113d_usarmy",                                              // M113 50cal
    "rhsusf_m113d_usarmy_M240",                                         // M113 M240
    "rhsusf_CGRCAT1A2_M2_usmc_d",                                       // MRAP M2
    "rhsusf_m1240a1_m2crows_usmc_d",                                    // MRAP M2 Crows
    "rhsusf_stryker_m1126_m2_d",                                        // Stryker M2
    "rhsusf_stryker_m1126_mk19_d",                                      // Stryker mk19
    "RHS_M6",                                                           // AA Bradley
    "RHS_M2A3_BUSKIII_d",                                               // Bradley Busk 3
	"rhsusf_m1a2sep2d_usarmy",                                          // M1A2SEPv2
    "rhsusf_m1a2sep2d_usarmy"                                           // M1A2SEPv2
];

//---------------------------------------------------------------------------------------

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "rhsusf_m1025_d_s_m2",                                         // Humvee M2
    "rhsusf_m1025_d_s_m2",                                         // Humvee M2 (Armed)
    "rhsusf_m1025_d_s_m2",                                         // Humvee M2 (Armed)
    "rhsusf_M1078A1P2_D_fmtv_usarmy",                              // M2 Truck
    "rhsusf_stryker_m1126_m2_d",                                   // Stryker M2
    "RHS_M6",                                                      // AA Bradley
    "rhsusf_m113d_usarmy",                                         // M113 M2
    "RHS_AH1Z",                                                    // AH1Z
    "RHS_MELB_AH6M",                                               // AH6M
    "RHS_CH_47F"                                                   // CH-47
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "rhsusf_m1025_d_s_m2",                                              // Humvee M2 (Armed)
    "rhsusf_m1025_d_s_Mk19",                                            // Humvee Mk19 (Armed)
    "rhsusf_m966_d",                                                    // Humvee TOW (Armed)
    "rhsusf_M1078A1P2_D_fmtv_usarmy",                                   // M2 Truck
    "rhsusf_M1078A1P2_D_fmtv_usarmy",                                   // M2 Truck
    "rhsusf_m1240a1_m2crows_usmc_d",                                    // MRAP M2 Crows
    "rhsusf_m1240a1_mk19crows_usmc_d",                                  // MRAP MK19 Crows
    "rhsusf_m113d_usarmy",                                              // M113 M2
    "RHS_M6",                                                           // AA Bradley
    "RHS_M6",                                                           // AA Bradley
    "rhsusf_stryker_m1126_m2_d",                                        // Stryker M2
    "rhsusf_stryker_m1126_mk19_d",                                      // Stryker MK19
    "rhsusf_m1a2sep1tuskiid_usarmy",                                    // M1A2 Tusk II
    "rhsusf_m1a2sep1d_usarmy",                                          // M1A2 tank
    "rhsusf_m1a1hc_d",                                                  // M1A1 hc
    "RHS_UH1Y",                                                         // UH-1Y MG
    "RHS_MELB_AH6M",                                                    // Littlebird (Armed)
    "RHS_AH64DGrey",                                                    // AH-64D
    "RHS_AH1Z"                                                          // AH-1Z
];

//---------------------------------------------------------------------------------------

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "rhsusf_M1078A1P2_D_fmtv_usarmy",                          // M2 Truck
    "rhsusf_M1078A1P2_D_fmtv_usarmy",                          // M2 Truck
    "rhsusf_M1220_M153_M2_usarmy_d",                           // MRAP M2
    "rhsusf_M1220_M153_MK19_usarmy_d",                         // MRAP MK19
    "rhsusf_stryker_m1126_m2_d",                               // Stryker M2
    "rhsusf_stryker_m1126_mk19_d",                             // Stryker MK19
    "RHS_UH60M",                                                // Blackhawk (Miniguns)
    "rhsusf_CH53E_USMC_GAU21"                                   // CH-53E (GAU-21)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "RHS_AH1Z",                                             // AH-1Z
    "RHS_AH64DGrey",                                            // AH-64D
    "rhsusf_CH53E_USMC_GAU21"                                  // CH-53E (GAU-21)
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "JS_JC_FA18E",                                         // F/A-18 E
    "JS_JC_FA18E",                                         // F/A-18 E
    "B_Plane_CAS_01_dynamicLoadout_F"                      // A-10
];
