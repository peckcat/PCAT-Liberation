/*
    NATO Arsenal Preset
    Last Update: 2023.6.13
    Author: iblackcat_4119/ a44145101ranger / Peckcat
    Needed:
        - None
    Optional:
        - ACE  - https://steamcommunity.com/sharedfiles/filedetails/?id=463939057
        - ACRE - https://steamcommunity.com/sharedfiles/filedetails/?id=751965892
        - TFAR - https://steamcommunity.com/sharedfiles/filedetails/?id=894678801
                
    Caliber List:
        // -- 9x19 mm
        // -- 9x21 mm
        // -- 11.43×23mm (.45 ACP)
        // -- Flare
        // -- 4.6x30 mm
        // -- 5.7x28 mm
        // -- 5.56x45 mm
        // -- 7.62x51 mm
        // -- 7.62x67 mm (.300 Win Mag)
        // -- 6.5×39 mm Grendel
        // -- 8.58×70 mm (.338 Lapua Magnum)
        // -- .338 Norma Magnum
        // -- 10.36×77 mm (.408 CheyTac)
        // -- 12.7x99 mm (.50 BMG)
        // -- 12 Gauge
        // -- 40 mm Grenades
        // -- etc.
*/

GRLIB_arsenal_weapons = [
    // Main Weapoons -----------------------------------------------------------
    // -- 9x21 mm
    "SMG_05_F",                                                     // Protector
    // -- 11.43×23mm (.45 ACP)
    "SMG_01_F",                                                     // Vermin SMG
    // -- 5.56x45 mm
    "arifle_SPAR_01_blk_F",                                         // SPAR-16 5.56x45 (Black)
    "arifle_SPAR_01_khk_F",                                         // SPAR-16 5.56x45 (Khaki)
    "arifle_SPAR_01_snd_F",                                         // SPAR-16 5.56x45 (Sand)
    "arifle_SPAR_01_GL_blk_F",                                      // SPAR-16 GL 5.56x45 (Black)
    "arifle_SPAR_01_GL_khk_F",                                      // SPAR-16 GL 5.56x45 (Khaki)
    "arifle_SPAR_01_GL_snd_F",                                      // SPAR-16 GL 5.56x45 (Sand)
    "arifle_SPAR_02_blk_F",                                         // SPAR-16S 5.56x45 (Black)
    "arifle_SPAR_02_khk_F",                                         // SPAR-16S 5.56x45 (Khaki)
    "arifle_SPAR_02_snd_F",                                         // SPAR-16S 5.56x45 (Sand)
    "arifle_SDAR_F",                                                // SDAR 5.56x45
    "LMG_03_F",                                                     // LIM-85 5.56x45
    // -- 6.5x39 mm Grendel
    "arifle_MX_F",                                                  // MX 6.5x39
    "arifle_MX_Black_F",                                            // MX 6.5x39 (Black)
    "arifle_MX_khk_F",                                              // MX 6.5x39 (Khaki)
    "arifle_MX_GL_F",                                               // MX 3GL 6.5x39
    "arifle_MX_GL_Black_F",                                         // MX 3GL 6.5x39 (Black)
    "arifle_MX_GL_khk_F",                                           // MX 3GL 6.5x39 (Khaki)
    "arifle_MX_SW_F",                                               // MX SW 6.5x39
    "arifle_MX_SW_Black_F",                                         // MX SW 6.5x39 (Black)
    "arifle_MX_SW_khk_F",                                           // MX SW 6.5x39 (Khaki)
    "arifle_MXC_F",                                                 // MXC 6.5x39
    "arifle_MXC_Black_F",                                           // MXC 6.5x39 (Black)
    "arifle_MXC_khk_F",                                             // MXC 6.5x39 (Khaki)
    "arifle_MXM_F",                                                 // MXM 6.5x39
    "arifle_MXM_Black_F",                                           // MXM 6.5x39 (Black)
    "arifle_MXM_khk_F",                                             // MXM 6.5x39 (Khaki)
    // -- 7.62x51 mm
    "srifle_EBR_F",                                                 // Mk14 7.62x51 EBR
    "srifle_DMR_06_camo_F",                                         // Mk14 7.62x51 (Camo)
    "srifle_DMR_06_olive_F",                                        // Mk14 7.62x51 (Olive)
    "srifle_DMR_03_F",                                              // Mk-I EMR 7.62x51 (Black)
    "srifle_DMR_03_khaki_F",                                        // Mk-I EMR 7.62x51 (Khaki)
    "srifle_DMR_03_multicam_F",                                     // Mk-I EMR 7.62x51 (Camo)
    "srifle_DMR_03_tan_F",                                          // Mk-I EMR 7.62x51 (Sand)
    "srifle_DMR_03_woodland_F",                                     // Mk-I EMR 7.62x51 (Woodland)
    "arifle_SPAR_03_blk_F",                                         // SPAR-17 7.62x51 (Black)
    "arifle_SPAR_03_khk_F",                                         // SPAR-17 7.62x51 (Khaki)
    "arifle_SPAR_03_snd_F",                                         // SPAR-17 7.62x51 (Sand)
    // -- 8.58×70 mm (.338 Lapua Magnum)
    "srifle_DMR_02_F",                                              // MAR-10 .338 (Black)
    "srifle_DMR_02_camo_F",                                         // MAR-10 .338 (Camo)
    "srifle_DMR_02_sniper_F",                                       // MAR-10 .338 (Sand)
    // -- .338 Norma Magnum
    "MMG_02_black_F",                                               // SPMG .338 (Black)
    "MMG_02_sand_F",                                                // SPMG .338 (Sand)
    "MMG_02_camo_F",                                                // SPMG .338 (MTP)
    // -- 10.36×77 mm (.408 CheyTac)
    "srifle_LRR_F",                                                 // M320 LRR .408
	"srifle_LRR_tna_F",                                             // M320 LRR .408 (Tropic)
    "srifle_LRR_camo_F",                                            // M320 LRR .408 (Camo)

    // Handguns -------------------------------------------------------------
    // -- 9x21 mm
    "hgun_P07_F",                                                   // P07 9x21
    "hgun_P07_khk_F",                                               // P07 9x21 (Khaki)
    "hgun_P07_blk_F",                                               // P07 9x21 (Black)
    "hgun_ACPC2_F",                                                 // ACP-C2 .45 ACP
    // -- 11.43×23mm (.45 ACP)
    "hgun_Pistol_heavy_01_F",                                       // 4-five .45 ACP
    "hgun_Pistol_heavy_01_green_F",                                 // 4-five .45 ACP (Green)
    "hgun_Pistol_heavy_02_F",                                       // Zubr .45 ACP
    // Flare
    "hgun_Pistol_Signal_F",                                         // Starter Pistol

    // Launcher -------------------------------------------------------------
    "launch_MRAWS_green_F",                                         // MAAWS Mk4 Mod 1 (Green)
    "launch_MRAWS_olive_F",                                         // MAAWS Mk4 Mod 1 (Olive)
    "launch_MRAWS_sand_F",                                          // MAAWS Mk4 Mod 1 (Sand)
    "launch_NLAW_F",                                                // PCML
    "launch_B_Titan_F",                                             // Titan MPRL (Sand)
    "launch_B_Titan_olive_F",                                       // Titan MPRL (Olive)
    "launch_B_Titan_tna_F",                                         // Titan MPRL (Tropic)
    "launch_B_Titan_short_F",                                       // Titan MPRL Compact (Sand)
    "launch_B_Titan_short_tna_F"                                    // Titan MPRL Compact (Tropic)
];

GRLIB_arsenal_magazines = [
    // Ammunition --------------------------------------------------------------
    // - Vanila
    // -- 9x21 mm
    "16Rnd_9x21_Mag",                                               // 9x21 16Rnd Mag
    "16Rnd_9x21_red_Mag",                                           // 9x21 16Rnd Reload Tracer (Red) Mag
    "16Rnd_9x21_green_Mag",                                         // 9x21 16Rnd Reload Tracer (Green) Mag
    "16Rnd_9x21_yellow_Mag",                                        // 9x21 16Rnd Reload Tracer (Yellow) Mag
    "30Rnd_9x21_Mag",                                               // 9x21 30Rnd Mag
    "30Rnd_9x21_Red_Mag",                                           // 9x21 30Rnd Reload Tracer (Red) Mag
    "30Rnd_9x21_Yellow_Mag",                                        // 9x21 30Rnd Reload Tracer (Yellow) Mag
    "30Rnd_9x21_Green_Mag",                                         // 9x21 30Rnd Reload Tracer (Green) Mag
    "30Rnd_9x21_Mag_SMG_02_Tracer_Green",                           // 9x21 30Rnd Reload Tracer (Green) Mag
    "30Rnd_9x21_Mag_SMG_02_Tracer_Red",                             // 9x21 30Rnd Reload Tracer (Red) Mag
    "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow",                          // 9x21 30Rnd Reload Tracer (Yellow) Mag
    "30Rnd_9x21_Mag_SMG_02",                                        // 9x21 30Rnd Mag
    // -- 11.43×23mm (.45 ACP)
    "9Rnd_45ACP_Mag",                                               // .45 ACP 9Rnd Mag
    "11Rnd_45ACP_Mag",                                              // .45 ACP 11Rnd Mag
    "30Rnd_45ACP_Mag_SMG_01",                                       // .45 ACP 30Rnd Vermin Mag
    "30Rnd_45ACP_Mag_SMG_01_Tracer_Green",                          // .45 ACP 30Rnd Vermin Tracers (Green) Mag
    "30Rnd_45ACP_Mag_SMG_01_Tracer_Red",                            // .45 ACP 30Rnd Vermin Tracers (Red) Mag
    "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",                         // .45 ACP 30Rnd Vermin Tracers (Yellow) Mag
    "6Rnd_45ACP_Cylinder",                                          // .45 ACP 6Rnd Cylinder
    // -- Flare
    "6Rnd_GreenSignal_F",                                           // 6Rnd Green Signal Flare
    "6Rnd_RedSignal_F",                                             // 6Rnd Red Signal Flare
    // -- 5.56x45 mm
    "20Rnd_556x45_UW_mag",                                          // 5.56x45 20Rnd Dual Purpose Mag
    "30Rnd_556x45_Stanag",                                          // 5.56x45 30rnd Reload Tracer (Yellow) Mag
    "30Rnd_556x45_Stanag_green",                                    // 5.56x45 30rnd Reload Tracer (Green) Mag
    "30Rnd_556x45_Stanag_red",                                      // 5.56x45 30rnd Reload Tracer (Red) Mag
    "30Rnd_556x45_Stanag_Tracer_Red",                               // 5.56x45 30Rnd Tracer (Red) Mag
    "30Rnd_556x45_Stanag_Tracer_Green",                             // 5.56x45 30Rnd Tracer (Green) Mag
    "30Rnd_556x45_Stanag_Tracer_Yellow",                            // 5.56x45 30Rnd Tracer (Yellow) Mag
    "30Rnd_556x45_Stanag_Sand",                                     // 5.56x45 30rnd Reload Tracer (Yellow) Sand Mag
    "30Rnd_556x45_Stanag_Sand_green",                               // 5.56x45 30rnd Reload Tracer (Green) Sand Mag
    "30Rnd_556x45_Stanag_Sand_red",                                 // 5.56x45 30rnd Reload Tracer (Red) Sand Mag
    "30Rnd_556x45_Stanag_Sand_Tracer_Red",                          // 5.56x45 30rnd Tracer (Red) Sand Mag
    "30Rnd_556x45_Stanag_Sand_Tracer_Green",                        // 5.56x45 30rnd Tracer (Green) Sand Mag
    "30Rnd_556x45_Stanag_Sand_Tracer_Yellow",                       // 5.56x45 30rnd Tracer (Yellow) Sand Mag
    "150Rnd_556x45_Drum_Mag_F",                                     // 5.56x45 150Rnd Mag
    "150Rnd_556x45_Drum_Mag_Tracer_F",                              // 5.56x45 150Rnd Tracer (Red) Mag
    "150Rnd_556x45_Drum_Sand_Mag_F",                                // 5.56x45 150Rnd Sand Mag
    "150Rnd_556x45_Drum_Sand_Mag_Tracer_F",                         // 5.56x45 150Rnd Sand Tracer (Red) Mag
    "150Rnd_556x45_Drum_Green_Mag_F",                               // 5.56x45 150Rnd Green Mag
    "150Rnd_556x45_Drum_Green_Mag_Tracer_F",                        // 5.56x45 150Rnd Green Tracer (Red) Mag
    "200Rnd_556x45_Box_F",                                          // 5.56x45 200Rnd Reload Tracer (Yellow) Box
    "200Rnd_556x45_Box_Red_F",                                      // 5.56x45 200Rnd Reload Tracer (Red) Box
    "200Rnd_556x45_Box_Tracer_F",                                   // 5.56x45 200Rnd Tracer (Yellow) Box
    "200Rnd_556x45_Box_Tracer_Red_F",                               // 5.56x45 200Rnd Tracer (Red) Box
    // -- 6.5x39 mm Grendel
    "30Rnd_65x39_caseless_mag",                                     // 6.5x39 30Rnd Sand Mag
    "30Rnd_65x39_caseless_khaki_mag",                               // 6.5x39 30Rnd Khaki Mag
    "30Rnd_65x39_caseless_black_mag",                               // 6.5x39 30Rnd Black Mag
    "30Rnd_65x39_caseless_mag_Tracer",                              // 6.5x39 30Rnd Tracer Sand Mag
    "30Rnd_65x39_caseless_khaki_mag_Tracer",                        // 6.5x39 30Rnd Tracer Khaki Mag
    "30Rnd_65x39_caseless_black_mag_Tracer",                        // 6.5x39 30Rnd Tracer Black Mag
    "100Rnd_65x39_caseless_mag",                                    // 6.5x39 100Rnd Sand Mag
 	"100Rnd_65x39_caseless_khaki_mag",                              // 6.5x39 100Rnd Khaki Mag
    "100Rnd_65x39_caseless_black_mag",                              // 6.5x39 100Rnd Black Mag
    "100Rnd_65x39_caseless_mag_Tracer",                             // 6.5x39 100Rnd Tracer Sand Mag
    "100Rnd_65x39_caseless_khaki_mag_tracer",                       // 6.5x39 100Rnd Tracer Khaki Mag
    "100Rnd_65x39_caseless_black_mag_tracer",                       // 6.5x39 100Rnd Tracer Black Mag
    // -- 7.62x51
    "20Rnd_762x51_Mag",                                             // 7.62x51 20Rnd Mag
    // -- 8.58×70 mm (.338 Lapua Magnum)
    "10Rnd_338_Mag",                                                // .338 LM 10Rnd Mag
    // -- .338 Norma Magnum
    "130Rnd_338_Mag",                                               // .338 NM 130Rnd Belt
    // -- .408 Chey Tac
    "7Rnd_408_Mag",                                                 // .408 7Rnd Mag
    // -- 40 mm Grenades
    "1Rnd_HE_Grenade_shell",                                        // 40 mm HE Grenade Round
    "1Rnd_Smoke_Grenade_shell",                                     // 40 mm Smoke Round (White)
    "1Rnd_SmokeBlue_Grenade_shell",                                 // 40 mm Smoke Round (Blue)
    "1Rnd_SmokeGreen_Grenade_shell",                                // 40 mm Smoke Round (Green)
    "1Rnd_SmokeOrange_Grenade_shell",                               // 40 mm Smoke Round (Orange)
    "1Rnd_SmokePurple_Grenade_shell",                               // 40 mm Smoke Round (Purple)
    "1Rnd_SmokeRed_Grenade_shell",                                  // 40 mm Smoke Round (Red)
    "1Rnd_SmokeYellow_Grenade_shell",                               // 40 mm Smoke Round (Yellow)
    "3Rnd_HE_Grenade_shell",                                        // 40 mm 3Rnd HE Grenade
    "3Rnd_Smoke_Grenade_shell",                                     // 40 mm 3Rnd Smoke (White)
    "3Rnd_SmokeBlue_Grenade_shell",                                 // 40 mm 3Rnd Smoke (Blue)
    "3Rnd_SmokeGreen_Grenade_shell",                                // 40 mm 3Rnd Smoke (Green)
    "3Rnd_SmokeOrange_Grenade_shell",                               // 40 mm 3Rnd Smoke (Orange)
    "3Rnd_SmokePurple_Grenade_shell",                               // 40 mm 3Rnd Smoke (Purple)
    "3Rnd_SmokeRed_Grenade_shell",                                  // 40 mm 3Rnd Smoke (Red)
    "3Rnd_SmokeYellow_Grenade_shell",                               // 40 mm 3Rnd Smoke (Yellow)
    "3Rnd_UGL_FlareCIR_F",                                          // 40 mm 3Rnd Flare (IR)
    "3Rnd_UGL_FlareGreen_F",                                        // 40 mm 3Rnd Flare (Green)
    "3Rnd_UGL_FlareRed_F",                                          // 40 mm 3Rnd Flare (Red)
    "3Rnd_UGL_FlareWhite_F",                                        // 40 mm 3Rnd Flare (White)
    "3Rnd_UGL_FlareYellow_F",                                       // 40 mm 3Rnd Flare (Yellow)
    "UGL_FlareCIR_F",                                               // 40 mm Flare Round (IR)
    "UGL_FlareGreen_F",                                             // 40 mm Flare Round (Green)
    "UGL_FlareRed_F",                                               // 40 mm Flare Round (Red)
    "UGL_FlareWhite_F",                                             // 40 mm Flare Round (White)
    "UGL_FlareYellow_F",                                            // 40 mm Flare Round (Yellow)
    // -- Launcher ammo
    "MRAWS_HE_F",                                                   // MRAWS HE 44
    "MRAWS_HEAT_F",                                                 // MRAWS HE 75
    "MRAWS_HEAT55_F",                                               // MRAWS HE 55
    "NLAW_F",                                                       // PCML Missile
    "Titan_AT",                                                     // Titan AT Missile
    "Titan_AP",                                                     // Titan AP Missile
    "Titan_AA",                                                     // Titan AA Missile
    // - ACE    
    // -- 5.56x45 mm
    "ACE_30Rnd_556x45_Stanag_M995_AP_mag",                          // 5.56x45 30Rnd M995 AP
    "ACE_30Rnd_556x45_Stanag_Mk262_mag",                            // 5.56x45 30Rnd Mk262
    "ACE_30Rnd_556x45_Stanag_Mk318_mag",                            // 5.56x45 30Rnd Mk318
    "ACE_30Rnd_556x45_Stanag_Tracer_Dim",                           // 5.56x45 30Rnd Dim Tracer
    // -- 6.5x39 mm Grendel
    "ACE_30Rnd_65x39_caseless_mag_Tracer_Dim",                      // 6.5x39 30Rnd IR-DIM Mag
    "ACE_100Rnd_65x39_caseless_mag_Tracer_Dim",                     // 6.5x39 100Rnd IR-DIM Mag
    // -- 7.62x51 mm
    "ACE_10Rnd_762x51_M118LR_Mag",                                  // 7.62x51 10Rnd M118LR
    "ACE_10Rnd_762x51_M993_AP_Mag",                                 // 7.62x51 10Rnd M993 AP
    "ACE_10Rnd_762x51_Mag_SD",                                      // 7.62x51 10Rnd SD
    "ACE_10Rnd_762x51_Mag_Tracer_Dim",                              // 7.62x51 10Rnd Dim Tracer
    "ACE_10Rnd_762x51_Mag_Tracer",                                  // 7.62x51 10Rnd Tracer
    "ACE_10Rnd_762x51_Mk316_Mod_0_Mag",                             // 7.62x51 10Rnd Mk316
    "ACE_10Rnd_762x51_Mk319_Mod_0_Mag",                             // 7.62x51 10Rnd Mk319
    "ACE_20Rnd_762x51_M118LR_Mag",                                  // 7.62x51 20Rnd M118LR
    "ACE_20Rnd_762x51_M993_AP_Mag",                                 // 7.62x51 20Rnd M993 AP
    "ACE_20Rnd_762x51_Mag_SD",                                      // 7.62x51 20Rnd SD
    "ACE_20Rnd_762x51_Mag_Tracer_Dim",                              // 7.62x51 20Rnd Dim Tracer
    "ACE_20Rnd_762x51_Mag_Tracer",                                  // 7.62x51 20Rnd Tracer
    "ACE_20Rnd_762x51_Mk316_Mod_0_Mag",                             // 7.62x51 20Rnd Mk316
    "ACE_20Rnd_762x51_Mk319_Mod_0_Mag",                             // 7.62x51 20Rnd Mk319
    // -- 7.62x67 mm (.300 Win Mag)
    "ACE_10Rnd_762x67_Mk248_Mod_0_Mag",                             // .300 WM 10Rnd Mag(Mk248 Mod 0)
    "ACE_10Rnd_762x67_Mk248_Mod_1_Mag",                             // .300 WM 10Rnd Mag(Mk248 Mod 1)
    // -- 8.58×70 mm (.338 Lapua Magnum)
    "ACE_10Rnd_338_API526_Mag",                                     // .338 LM 10Rnd Mag(API526)
    "ACE_10Rnd_338_300gr_HPBT_Mag",                                 // .338 LM 10Rnd Mag(300gr Lapua Scenar)
    // -- 10.36×77 mm (.408 CheyTac)
    "ACE_7Rnd_408_305gr_Mag",                                       // .408 7Rnd 305gr 
    // -- 12.7x99 mm (.50 BMG)
    "ACE_5Rnd_127x99_Mag",                                          // 12.7x99 5rnd
    "ACE_5Rnd_127x99_AMAX_Mag",                                     // 12.7x99 5rnd AMAX
    "ACE_5Rnd_127x99_API_Mag",                                      // 12.7x99 API
    // -- 40 mm Grenades
    "ACE_40mm_Flare_ir",                                            // 40 mm Flare Round (IR)
    "ACE_HuntIR_M203",                                              // 40 mm HuntIR Round
    // -- etc.
    "Laserbatteries",                                               // Designator Batteries

    // Grenades ----------------------------------------------------------------
    "B_IR_Grenade",                                                 // IR Grenade [NATO]
    "Chemlight_blue",                                               // Chemlight (Blue)
    "Chemlight_green",                                              // Chemlight (Green)
    "Chemlight_red",                                                // Chemlight (Red)
    "Chemlight_yellow",                                             // Chemlight (Yellow)
    "MiniGrenade",                                                  // V40 Mini-Grenade
    "HandGrenade",                                                  // M67 Frag Grenade
    "SmokeShell",                                                   // Smoke Grenade (White)
    "SmokeShellBlue",                                               // Smoke Grenade (Blue)
    "SmokeShellGreen",                                              // Smoke Grenade (Green)
    "SmokeShellOrange",                                             // Smoke Grenade (Orange)
    "SmokeShellPurple",                                             // Smoke Grenade (Purple)
    "SmokeShellRed",                                                // Smoke Grenade (Red)
    "SmokeShellYellow",                                             // Smoke Grenade (Yellow)
    // - ACE
    "ACE_Chemlight_IR",                                             // Chemlight (IR)
    "ACE_Chemlight_Orange",                                         // Chemlight (Orange)
    "ACE_Chemlight_UltraHiBlue",                                    // Chemlight (Ultra Hi Blue)
    "ACE_Chemlight_UltraHiGreen",                                   // Chemlight (Ultra Hi Green)
    "ACE_Chemlight_UltraHiOrange",                                  // Chemlight (Ultra Hi Orange)
    "ACE_Chemlight_UltraHiRed",                                     // Chemlight (Ultra Hi Red)
    "ACE_Chemlight_UltraHiWhite",                                   // Chemlight (Ultra Hi White)
    "ACE_Chemlight_UltraHiYellow",                                  // Chemlight (Ultra Hi Yellow)
    "ACE_Chemlight_White",                                          // Chemlight (White)
    "ACE_M14",                                                      // AN-M14 Incendiary Grenade
    "ACE_M84",                                                      // M84 Stun Grenade
    // - MS Strobe
    "MS_Strobe_Mag_1",                                              // MS IFF Strobe -1
    "MS_Strobe_Mag_2",                                              // MS IFF Strobe -2

    // Explosives --------------------------------------------------------------
    "APERSBoundingMine_Range_Mag",                                  // APERS Bounding Mine
    "APERSMine_Range_Mag",                                          // APERS Mine
    "APERSMineDispenser_Mag",                                       // APERS Mine Dispenser
    "APERSTripMine_Wire_Mag",                                       // APERS Tripwire Mine
    "ATMine_Range_Mag",                                             // AT Mine
    "ClaymoreDirectionalMine_Remote_Mag",                           // Claymore Charge
    "DemoCharge_Remote_Mag",                                        // Explosive Charge
    "Drone_Range_Mag_dummy",                                        // AT Mine
    "Drone_Range_Mag",                                              // AT Mine
    "IEDLandBig_Remote_Mag",                                        // Large IED (Dug-in)
    "IEDLandSmall_Remote_Mag",                                      // Small IED (Dug-in)
    "IEDUrbanBig_Remote_Mag",                                       // Large IED (Urban)
    "IEDUrbanSmall_Remote_Mag",                                     // Small IED (Urban)
    "SatchelCharge_Remote_Mag",                                     // Explosive Satchel
    "SLAMDirectionalMine_Wire_Mag",                                 // M6 SLAM Mine
    "TrainingMine_Mag",                                             // Training Mine
    // - ACE
    "ACE_FlareTripMine_Mag"
];

GRLIB_arsenal_items = [
    // Headgear ----------------------------------------------------------------
    "H_Watchcap_blk",                                               // Beanie
    "H_Watchcap_camo",                                              // Beanie (Green)
    "H_Watchcap_khk",                                               // Beanie (Khaki)
    "H_Watchcap_cbr",                                               // Benaie (Coyote)
    "H_Bandanna_mcamo",                                             // Bandana (MTP)
    "H_Cap_tan_specops_US",                                         // Cap (US MTP)
    "H_MilCap_mcamo",                                               // Military Cap (MTP)
    "H_Beret_02",                                                   // Beret [NATO]
    "H_Beret_Colonel",                                              // Beret [NATO] (Colonel)
    "H_Booniehat_mcamo",                                            // Booniehat (MTP)
    "H_Booniehat_wdl",                                              // Booniehat (Woodland)
    "H_Booniehat_tna_F",                                            // Booniehat (Tropic)
    "H_HelmetCrew_B",                                               // Crew Helmet [NATO]
    "H_PilotHelmetFighter_B",                                       // Pilot Helmet [NATO]
    "H_CrewHelmetHeli_B",                                           // Heli Crew Helmet [NATO]
    "H_PilotHelmetHeli_B",                                          // Heli Pilot Helmet [NATO]
    "H_MilCap_wdl",                                                 // Military Cap (Woodland)
    "H_MilCap_tna_F",                                               // Military Cap (Tropic)
    "H_HelmetB_TI_tna_F",                                           // Stealth Combat Helmet
    "H_HelmetB_TI_arid_F",                                          // Stealth Combat Helmet (Arid)
    "H_HelmetB",                                                    // Combat Helmet
    "H_HelmetB_black",                                              // Combat Helmet (Black)
    "H_HelmetB_camo",                                               // Combat Helmet (Camo)
    "H_HelmetB_grass",                                              // Combat Helmet (Grass)
    "H_HelmetB_sand",                                               // Combat Helmet (Sand)
    "H_HelmetB_desert",                                             // Combat Helmet (Desert)
    "H_HelmetB_snakeskin",                                          // Combat Helmet (Snakeskin)
    "H_HelmetB_plain_wdl",                                          // Combat Helmet (Woodland)
    "H_HelmetB_tna_F",                                              // Combat Helmet (Tropic)
    "H_HelmetB_light",                                              // Light Combat Helmet
    "H_HelmetB_light_black",                                        // Light Combat Helmet (Black)
    "H_HelmetB_light_desert",                                       // Light Combat Helmet (Desert)
    "H_HelmetB_light_grass",                                        // Light Combat Helmet (Grass)
    "H_HelmetB_light_sand",                                         // Light Combat Helmet (Sand)
    "H_HelmetB_light_snakeskin",                                    // Light Combat Helmet (Snakeskin)
    "H_HelmetB_light_wdl",                                          // Light Combat Helmet (Woodland)
    "H_HelmetB_Light_tna_F",                                        // Light Combat Helmet (Tropic)
    "H_HelmetSpecB",                                                // Enhanced Combat Helmet
    "H_HelmetSpecB_blk",                                            // Enhanced Combat Helmet (Black)
    "H_HelmetSpecB_paint2",                                         // Enhanced Combat Helmet (Desert)
    "H_HelmetSpecB_paint1",                                         // Enhanced Combat Helmet (Grass)
    "H_HelmetSpecB_sand",                                           // Enhanced Combat Helmet (Sand)
    "H_HelmetSpecB_snakeskin",                                      // Enhanced Combat Helmet (Snakeskin)
    "H_HelmetSpecB_wdl",                                            // Enhanced Combat Helmet (Woodland)
    "H_HelmetB_Enh_tna_F",                                          // Enhanced Combat Helmet (Tropic)

    // Uniforms  ---------------------------------------------------------------
	"U_B_T_Soldier_F",                                              // Combat Fatigues (Tropic)
    "U_B_CBRN_Suit_01_MTP_F",                                       // CBRN Suit (MTP) [NATO]
    "U_B_CBRN_Suit_01_Tropic_F",                                    // CBRN Suit (Tropic) [NATO]
    "U_B_CBRN_Suit_01_Wdl_F",                                       // CBRN Suit (Woodland) [NATO]
    "U_B_CombatUniform_mcam_tshirt",                                // Combat Fatigues (MTP) (Tee)
    "U_B_CombatUniform_mcam_vest",                                  // Recon Fatigues (MTP)
    "U_B_CombatUniform_mcam_wdl_f",                                 // Combat Fatigues (Woodland)
    "U_B_CombatUniform_mcam",                                       // Combat Fatigues (MTP)
    "U_B_CombatUniform_mcam",                                       // Combat Fatigues (MTP)
    "U_B_CombatUniform_tshirt_mcam_wdL_f",                          // Combat Fatigues (Woodland, Tee)
    "U_B_CombatUniform_vest_mcam_wdl_f",                            // Recon Fatigues (Woodland)
    "U_B_CTRG_1",                                                   // CTRG Combat Uniform
    "U_B_CTRG_2",                                                   // CTRG Combat Uniform (Tee)
    "U_B_CTRG_3",                                                   // CTRG Combat Uniform (Rolled-up)
    "U_B_CTRG_Soldier_2_Arid_F",                                    // CTRG Stealth Uniform (Tee Arid)
    "U_B_CTRG_Soldier_2_F",                                         // CTRG Stealth Uniform (Tee)
    "U_B_CTRG_Soldier_3_Arid_F",                                    // CTRG Stealth Uniform (Rolled-up Arid)
    "U_B_CTRG_Soldier_3_F",                                         // CTRG Stealth Uniform (Rolled-up)
    "U_B_CTRG_Soldier_Arid_F",                                      // CTRG Stealth Uniform (Arid)
    "U_B_CTRG_Soldier_F",                                           // CTRG Stealth Uniform
    "U_B_CTRG_Soldier_urb_1_F",                                     // CTRG Urban Uniform
    "U_B_CTRG_Soldier_urb_2_F",                                     // CTRG Urban Uniform (Tee)
    "U_B_CTRG_Soldier_urb_3_F",                                     // CTRG Urban Uniform (Rolled-up)
    "U_B_FullGhillie_ard",                                          // Full Ghillie (Arid) [NATO]
    "U_B_FullGhillie_lsh",                                          // Full Ghillie (Lush) [NATO]
    "U_B_FullGhillie_sard",                                         // Full Ghillie (Semi-Arid) [NATO]
    "U_B_GhillieSuit",                                              // Ghillie Suit [NATO]
    "U_B_HeliPilotCoveralls",                                       // Heli Pilot Coveralls [NATO]
    "U_B_PilotCoveralls",                                           // Pilot Coveralls [NATO]
    "U_B_T_FullGhillie_tna_F",                                      // Full Ghillie (Jungle) [NATO]
    "U_B_T_Sniper_F",                                               // Ghillie Suit (Tropic) [NATO]
    "U_B_T_Soldier_AR_F",                                           // Combat Fatigues (Tropic, Tee)
    "U_B_T_Soldier_SL_F",                                           // Recon Fatigues (Tropic)
    "U_B_Wetsuit",                                                  // Wetsuit [NATO]

    // Vests  ------------------------------------------------------------------
    "V_Chestrig_blk",                                               // Chest Rig (Black)
    "V_Chestrig_rgr",                                               // Chest Rig (Green)
    "V_RebreatherB",                                                // Rebreather [NATO]
    "V_TacVest_blk",                                                // Tactical Vest (Black)
    "V_TacVest_oli",                                                // Tactical Vest (Olive)
    "V_DeckCrew_yellow_F",                                          // Deck Crew Vest (Yellow)
    "V_BandollierB_rgr",                                            // Slash Bandolier (Green)
    "V_Safety_orange_F",                                            // Safety Vest (Orange)
    "V_Safety_yellow_F",                                            // Safety Vest (Yellow)
    "V_PlateCarrierL_CTRG",                                         // CTRG Plate Carrier Rig Mk.1 (Light)
    "V_PlateCarrierL_CTRG",                                         // CTRG Plate Carrier Rig Mk.2 (Heavy)
    "V_PlateCarrierGL_rgr",                                         // Carrier GL Rig (Green)
    "V_PlateCarrierGL_blk",                                         // Carrier GL Rig (Black)
    "V_PlateCarrierGL_mtp",                                         // Carrier GL Rig (MTP)
    "V_PlateCarrierGL_wdl",                                         // Carrier GL Rig (Woodland)
    "V_PlateCarrierGL_tna_F",                                       // Carrier GL Rig (Tropic)
    "V_PlateCarrier1_rgr",                                          // Carrier Lite (Green)
    "V_PlateCarrier1_blk",                                          // Carrier Lite (Black)
    "V_PlateCarrier1_wdl",                                          // Carrier Lite (Woodland)
    "V_PlateCarrier1_tna_F",                                        // Carrier Lite (Tropic)
    "V_PlateCarrier1_rgr_noflag_F",                                 // Carrier Lite (Green, No Flag)
    "V_PlateCarrier2_rgr",                                          // Carrier Rig (Green)
    "V_PlateCarrier2_blk",                                          // Carrier Rig (Black)
    "V_PlateCarrier2_wdl",                                          // Carrier Rig (Woodland)
    "V_PlateCarrier2_tna_F",                                        // Carrier Rig (Tropic)
    "V_PlateCarrier2_rgr_noflag_F",                                 // Carrier Rig (Green, No Flag)
    "V_PlateCarrierSpec_rgr",                                       // Carrier Special Rig (Green)
    "V_PlateCarrierSpec_blk",                                       // Carrier Special Rig (Black)
    "V_PlateCarrierSpec_mtp",                                       // Carrier Special Rig (MTP)
    "V_PlateCarrierSpec_wdl",                                       // Carrier Special Rig (Woodland)
    "V_PlateCarrierSpec_tna_F",                                     // Carrier Special Rig (Tropic)
    "V_PlateCarrierIAGL_oli",                                       // GA Carrier GL Rig (Olive)
    // - FIR
    "FIR_pilot_vest",                                               // Pilot Survival Vest
    "fir_usarmy_pilot_multicam_vest",                               // US ARMY Helicoptr Pilot/Crew Vest(Multicam)
    "fir_usarmy_pilot_vest",                                        // US ARMY Helicoptr Pilot/Crew Vest(UCP)

    // Facegear ----------------------------------------------------------------
    "G_AirPurifyingRespirator_01_F",                                // APR [NATO]
    "G_Aviator",                                                    // Aviator Glasses
    "G_Bandanna_oli",                                               // Bandana (Olive)
    "G_Bandanna_blk",                                               // Bandana (Black)
    "G_Bandanna_khk",                                               // Bandana (Khaki)
    "G_Bandanna_tan",                                               // Bandana (Tan)
    "G_Bandanna_beast",                                             // Bandana (Beast)
    "G_Bandanna_shades",                                            // Bandana (Shades)
    "G_Bandanna_sport",                                             // Bandana (Sport)
    "G_Bandanna_aviator",                                           // Bandana (Aviator)
    "G_Spectacles",                                                 // Spectacle Glasses
    "G_Spectacles_Tinted",                                          // Tinted Spectacles
    "G_Lowprofile",                                                 // Low Profile Goggles
    "G_B_Diving",                                                   // Diving Goggles [NATO]
    "G_Combat",                                                     // Combat Goggles
    "G_Combat_Goggles_tna_F",                                       // Combat Goggles (Green)
    "G_Shades_Black",                                               // Shades (Black)
    "G_Shades_Blue",                                                // Shades (Blue)
    "G_Shades_Green",                                               // Shades (Green)
    "G_Shades_Red",                                                 // Shades (Red)
    "G_Squares_Tinted",                                             // Square Shades
    "G_Squares",                                                    // Square Spectacles
    "G_Tactical_Clear",                                             // Tactical Glasses
    "G_Tactical_Black",                                             // Tactical Shades
    "G_Balaclava_TI_tna_F",                                         // Stealth Balaclava (Green)
    "G_Balaclava_TI_G_tna_F",                                       // Stealth Balaclava (Green, Goggles)
    "G_AirPurifyingRespirator_01_F",                                // APR [NATO]
    "G_RegulatorMask_F",                                            // Regulator Facepiece

    // Nightvision -------------------------------------------------------------
    "NVGoggles",                                                    // NV Goggles (Brown)
    "NVGoggles_OPFOR",                                              // NV Googles (Gen3, Black)
    "NVGoggles_INDEP",                                              // NV Goggles (Green)
	"NVGoggles_tna_F",                                              // NV Goggles (Tropic)
    // - ACE
    "ACE_NVG_Gen4",                                                 // NV Goggles (Gen4, Brown)
    "ACE_NVG_Gen4_Black",                                           // NV Goggles (Gen4, Black)
    "ACE_NVG_Gen4_Green",                                           // NV Goggles (Gen4, Green)

    // Binoculars --------------------------------------------------------------
    "Binocular",                                                    // Binoculars
    "Laserdesignator_01_khk_F",                                     // Laser Designator (Khaki)
    "Laserdesignator_02_ghex_F",                                    // Laser Designator (Green Hex)
    "Laserdesignator_02",                                           // Laser Designator (Hex)
    "Laserdesignator_03",                                           // Laser Designator (Olive)
    "Laserdesignator",                                              // Laser Designator (Sand)
    "Rangefinder",                                                  // Rangefinder
    // - ACE
    "ace_dragon_sight",                                             // SU-36/P Daysight
    "ACE_MX2A",                                                     // MX-2A
    "ACE_Vector",                                                   // Vector 21 Nite
    "ACE_VectorDay",                                                // Vector 21
    "ACE_Yardage450",                                               // Yardage 450

    // etc. equips -------------------------------------------------------------
    "B_UavTerminal",                                                // UAV Terminal [NATO]
    "I_UavTerminal",                                                // UAV Terminal [AAF]
    "ItemCompass",                                                  // Compass
    "ItemGPS",                                                      // GPS
    "ItemMap",                                                      // Map
    "ItemRadio",                                                    // Radio
    "ItemWatch",                                                    // Watch
    "O_UavTerminal",                                                // UAV Terminal [CSAT]
    // - ACE
    "ACE_Altimeter",                                                // Altimeter Watch

    // Sights ------------------------------------------------------------------
    "optic_Aco",                                                    // ACO (Red)
    "optic_AMS_khk",                                                // AMS (Khaki)
    "optic_AMS_snd",                                                // AMS (Sand)
    "optic_AMS",                                                    // AMS (Black)
    "optic_DMS_ghex_F",                                             // DMS (Green Hex)
    "optic_DMS",                                                    // DMS
    "optic_mrco",                                                   // MRCO
    "optic_ERCO_blk_F",                                             // ERCO (Black)
    "optic_ERCO_khk_F",                                             // ERCO (Khaki)
    "optic_Hamr_khk_F",                                             // RCO (Khaki)
    "optic_Hamr",                                                   // RCO
    "optic_holosight_blk_f",                                        // Mk17 Holosight (Black)
    "optic_Holosight_khk_F",                                        // Mk17 Holosight (Khaki)
    "optic_holosight_smg_blk_f",                                    // Mk17 Holosight SMG (Black)
    "optic_Holosight_smg_khk_F",                                    // Mk17 Holosight SMG (Khaki)
    "optic_Holosight_smg",                                          // Mk17 Holosight SMG
    "optic_Holosight",                                              // Mk17 Holosight
    "optic_LRPS_tna_F",                                             // LRPS (Tropic)
    "optic_LRPS",                                                   // LRPS
    "optic_mrd_black",                                              // MRD (Black)
    "optic_mrd",                                                    // MRD
    "optic_nvs",                                                    // NVS
    "optic_SOS_khk_F",                                              // MOS (Khaki)
    "optic_sos",                                                    // MOS
    "optic_tws_mg",                                                 // TWS MG
    "optic_tws",                                                    // TWS
    "optic_yorris",                                                 // Yorris J2
    // - ACE
    "ace_optic_hamr_2d",                                            // Leupold Mark 4 HAMR (2D)
    "ace_optic_lrps_2d",                                            // Nightforce NXS(2d)
    "ace_optic_lrps_pip",                                           // Nightforce NXS(PIP)
    "ace_optic_mrco_2d",                                            // IOR-Valdada Pitbull 2 (2D)
    // - GOLD_Optics
    "Scot_EO_Vudu",
    "Scot_EO_Vudu_RMR_TOP",
    "Scot_LEU_MK8",
    "Scot_LEU_MK8_RMR_Top",
    "Scot_NForce_Atcr",
    "Scot_NForce_Atcr_RMR_Top",
    "Scot_SigT6",
    "Scot_SigT6_RMR_Top",
    "Scot_Trij_Accu",
    "Scot_Trij_Accu_RMR_Top",
    "Scot_VRTX_RAZR",
    "Scot_VRTX_RAZR_RMR_Top",
    // Rail Attachments --------------------------------------------------------
    "acc_pointer_IR",                                               // IR Laser Pointer
    "acc_flashlight",                                               // Flashlight
    "acc_flashlight_smg_01",                                        // Flashlight
    "acc_flashlight_pistol",                                        // Pistol Flashlight
    // - ACE
    "ACE_acc_pointer_green_ir",                                     // Laser Pointer (green ir)
    "ACE_acc_pointer_green",                                        // Laser Pointer (green)

    // Muzzle Attachments ------------------------------------------------------
    "muzzle_snds_L",                                                // Sound Suppressor (9x21)
    "muzzle_snds_acp",                                              // Sound Suppressor (.45 ACP)
    "muzzle_snds_M",                                                // Sound Suppressor (5.56x45)
    "muzzle_snds_m_khk_F",                                          // Sound Suppressor (5.56x45, Khaki)
    "muzzle_snds_H",                                                // Sound Suppressor (6.5x39)
    "muzzle_snds_H_snd_F",                                          // Sound Suppressor (6.5x39, Sand)
    "muzzle_snds_H_khk_F",                                          // Sound Suppressor (6.5x39, Khaki)
    "muzzle_snds_B",                                                // Sound Suppressor (7.62x51)
    "muzzle_snds_B_khk_F",                                          // Sound Suppressor (7.62x51, Khaki)
    "muzzle_snds_B_snd_F",                                          // Sound Suppressor (7.62x51, Sand)
    "muzzle_snds_338_black",                                        // Sound Suppressor (.338, Black)
    "muzzle_snds_338_green",                                        // Sound Suppressor (.338, Green)
    "muzzle_snds_338_sand",                                         // Sound Suppressor (.338, Sand)

    // Bipods ------------------------------------------------------------------
    "bipod_01_f_blk",                                               // Bipod (Black) [NATO]
    "bipod_01_F_khk",                                               // Bipod (Khaki) [NATO]
    "bipod_01_f_snd",                                               // Bipod (Sand) [NATO]
    "bipod_01_f_mtp",                                               // Bipod (MTP) [NATO]
    // - dzn Rifle Tripod
    "dzn_tripod_rifle",
    "dzn_tripod_rifle_od",
    "dzn_tripod_rifle_tan",
    "dzn_mg_tripod_universal",                                      //Bipod for MG
    "dzn_mg_tripod_m122a1_m249mount_rhs",
    "dzn_mg_tripod_m122a1_m240mount_rhs",

    // Misc. Items -------------------------------------------------------------
    "FirstAidKit",                                                  // First Aid Kit
    "Medikit",                                                      // Medikit
    "MineDetector",                                                 // Mine Detector
    "ToolKit",                                                      // Toolkit
    // - ADV ACE-CPR(Pike Edition)
    "adv_aceCPR_AED",                                               // Automated External Defibrillator
    // - ACE Items
    "ACE_adenosine",                                                // Adenosine autoinjector
    "ACE_artilleryTable",                                           // Artillery Rangetable
    "ACE_ATragMX",                                                  // ATragMX
    "ACE_Banana",                                                   // Banana
    "ACE_bloodIV_250",                                              // Blood IV (250 ml)
    "ACE_bloodIV_500",                                              // Blood IV (500 ml)
    "ACE_bloodIV",                                                  // Blood IV (1000 ml)
    "ACE_bodyBag",                                                  // Bodybag
    "ACE_CableTie",                                                 // Cable Tie
    "ACE_Canteen_Empty",                                            // ACE 水壺(空)
    "ACE_Canteen_Half",                                             // ACE 水壺(半罐)
    "ACE_Canteen",                                                  // ACE 水壺
    "ACE_Cellphone",                                                // Cellphone
    "ACE_Chemlight_Shield",                                         // Chemlight Shield (Empty)
    "ACE_Clacker",                                                  // M57 Firing Device
    "ACE_DAGR",                                                     // DAGR
    "ACE_DeadManSwitch",                                            // Dead Man's Switch
    "ACE_DefusalKit",                                               // Defusal Kit
    "ACE_EarPlugs",                                                 // Earplugs
    "ACE_elasticBandage",                                           // Bandage (Elastic)
    "ACE_EntrenchingTool",                                          // Entrenching Tool
    "ACE_epinephrine",                                              // Epinephrine autoinjector
    "ACE_fieldDressing",                                            // Bandage (Basic)
    "ACE_Flashlight_KSF1",                                          // KSF-1
    "ACE_Flashlight_Maglite_ML300L",                                // Maglite ML300L
    "ACE_Flashlight_MX991",                                         // Fulton MX-991
    "ACE_Flashlight_XL50",                                          // Maglite XL50
    "ACE_HuntIR_monitor",                                           // HuntIR monitor
    "ACE_IR_Strobe_Item",                                           // IR Strobe
    "ACE_Kestrel4500",                                              // Kestrel 4500NV
    "ACE_M26_Clacker",                                              // M152 Firing Device
    "ACE_MapTools",                                                 // Map Tools
    "ACE_microDAGR",                                                // MicroDAGR GPS
    "ACE_morphine",                                                 // Morphine autoinjector
    "ACE_muzzle_mzls_338",                                          // Flash Suppressor (.338)
    "ACE_muzzle_mzls_93mmg",                                        // Flash Suppressor (9.3 mm)
    "ACE_muzzle_mzls_B",                                            // Flash Suppressor (7.62x51)
    "ACE_muzzle_mzls_H",                                            // Flash Suppressor (6.5x39)
    "ACE_muzzle_mzls_smg_01",                                       // FLash Suppressor (.45 ACP)
    "ACE_muzzle_mzls_smg_02",                                       // Flash Suppressor (9x21)
    "ACE_packingBandage",                                           // Bandage (Packing)
    "ACE_personalAidKit",                                           // Personal Aid Kit
    "ACE_plasmaIV_250",                                             // Plasma IV (250 ml)
    "ACE_plasmaIV_500",                                             // Plasma IV (500 ml)
    "ACE_plasmaIV",                                                 // Plasma IV (1000 ml)
    "ACE_quikclot",                                                 // Bandage (QuickClot)
    "ACE_RangeCard",                                                // Range Card
    "ACE_RangeTable_82mm",                                          // 82 mm Rangetable
    "ACE_rope12",                                                   // Rope 12.2 meters
    "ACE_rope15",                                                   // Rope 15.2 meters
    "ACE_rope18",                                                   // Rope 18.3 meters
    "ACE_rope27",                                                   // Rope 27.4 meters
    "ACE_rope3",                                                    // Rope 3 meters
    "ACE_rope36",                                                   // Rope 36.6 meters
    "ACE_rope6",                                                    // Rope 6 meters
    "ACE_salineIV_250",                                             // Saline IV (250 ml)
    "ACE_salineIV_500",                                             // Saline IV (500 ml)
    "ACE_salineIV",                                                 // Saline IV (1000 ml)
    "ACE_Sandbag_empty",                                            // Sandbag (empty)
    "ACE_splint",                                                   // Splint
    "ACE_SpottingScope",                                            // Spotting Scope
    "ACE_SpraypaintBlack",                                          // Spray Paint (Black)
    "ACE_SpraypaintBlue",                                           // Spray Paint (Blue)
    "ACE_SpraypaintGreen",                                          // Spray Paint (Green)
    "ACE_SpraypaintRed",                                            // Spray Paint (Red)
    "ACE_surgicalKit",                                              // Surgical Kit
    "ACE_tourniquet",                                               // Tourniquet (CAT)
    "ACE_Tripod",                                                   // SSWT Kit
    "ACE_UAVBattery",                                               // UAV Battery
    "ACE_VMH3",                                                     // VMH3
    "ACE_VMM3",                                                     // VMM3
    "ACE_WaterBottle_Empty",                                        // ACE 飲用水(空)
    "ACE_WaterBottle_Half",                                         // ACE 飲用水(半罐)
    "ACE_WaterBottle",                                              // ACE 飲用水
    "ACE_wirecutter",                                               // Wirecutter
    // - ACRE Items
    "ACRE_PRC117F",                                                 // AN/PRC-117F
    "ACRE_PRC148",                                                  // AN/PRC-148
    "ACRE_PRC152",                                                  // AN/PRC-152
    "ACRE_PRC343",                                                  // AN/PRC-343
    "ACRE_PRC77",                                                   // AN/PRC-77
    "ACRE_SEM52SL",                                                 // SEM 52 SL
    "ACRE_SEM70",                                                   // SEM 70
    "ACRE_VHF30108",                                                // VHF30108 GSM
    "ACRE_VHF30108MAST",                                            // VHF30108 Mast
    "ACRE_VHF30108SPIKE",                                           // VHF30108 GS
    // - Ctab Devastator Edition
    "ItemAndroid",
    "ItemcTab",                                                     // Rugged Tablet
    "ItemcTabHCam",
    "ItemMicroDAGR"
];

GRLIB_arsenal_backpacks = [
    // Backpacks ---------------------------------------------------------------
    "B_AssaultPack_blk",                                            // Assault Pack (Black)
    "B_AssaultPack_mcamo",                                          // Assault Pack (MTP)
    "B_AssaultPack_rgr",                                            // Assault Pack (Green)
    "B_AssaultPack_tna_F",                                          // Assault Pack (Tropic)
    "B_AssaultPack_wdl_F",                                          // Assault Pack (Woodland)
    "B_Bergen_dgtl_F",                                              // Bergen Backpack (Digital)
    "B_Bergen_hex_F",                                               // Bergen Backpack (Hex)
    "B_Bergen_mcamo_F",                                             // Bergen Backpack (MTP)
    "B_Bergen_tna_F",                                               // Bergen Backpack (Tropic)
    "B_Carryall_cbr",                                               // Carryall Backpack (Coyote)
    "B_Carryall_khk",                                               // Carryall Backpack (Khaki)
    "B_Carryall_mcamo",                                             // Carryall Backpack (MTP)
    "B_Carryall_oli",                                               // Carryall Backpack (Olive)
    "B_FieldPack_blk",                                              // Field Pack (Black)
    "B_FieldPack_cbr",                                              // Field Pack (Coyote)
    "B_FieldPack_khk",                                              // Field Pack (Khaki)
    "B_FieldPack_oli",                                              // Field Pack (Olive)
    "B_Carryall_wdl_F",                                             // Carryall Backpack (Woodland)
    "B_CombinationUnitRespirator_01_F",                             // Combination Unit Respirator
    "B_Kitbag_cbr",                                                 // Kitbag (Coyote)
    "B_Kitbag_mcamo",                                               // Kitbag (MTP)
    "B_Kitbag_rgr",                                                 // Kitbag (Green)
    "B_Kitbag_tan",                                                 // Kitbag (Tan)
    "B_LegStrapBag_black_F",                                        // Leg Strap Bag (Black)
    "B_LegStrapBag_coyote_F",                                       // Leg Strap Bag (Coyote)
    "B_LegStrapBag_olive_F",                                        // Leg Strap Bag (Olive)
    "B_Parachute",                                                  // Steerable Parachute
    "B_TacticalPack_blk",                                           // Tatical Backpack (Black)
    "B_TacticalPack_mcamo",                                         // Tactical Backpack (MTP)
    "B_TacticalPack_oli",                                           // Tactical Backpack (Olive)
    // - ACE Backpacks
    "ACE_NonSteerableParachute",                                    // Non-Steerable Parachute
    "ACE_TacticalLadder_Pack",                                      // Telescopic Ladder
    // - ILBE Assault Pack
    "tfw_ilbe_whip_alpine",
    "tfw_ilbe_whip_arid",
    "tfw_ilbe_whip_black",
    "tfw_ilbe_whip_coy",
    "tfw_ilbe_whip_d",
    "tfw_ilbe_whip_gr",
    "tfw_ilbe_whip_mc",
    "tfw_ilbe_whip_mct",
    "tfw_ilbe_whip_ocp",
    "tfw_ilbe_whip_wd",
    "tfw_ilbe_whip_wd2"
];
