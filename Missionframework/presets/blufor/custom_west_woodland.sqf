/*
    Needed Mods:
    - RHS USAF

    Optional Mods:
    - F/A-18
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy";            // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy";   // This is the mobile respawn (and medical) truck.
huron_typename = "I_Heli_Transport_02_F";                               // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "rhsusf_army_ocp_combatcrewman";                    // This defines the crew for vehicles.
pilot_classname = "rhsusf_army_ocp_helipilot";                          // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "RHS_MELB_MH6M";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "rhsusf_M977A4_BKIT_usarmy_wd";         // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "B_Radar_System_01_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["rhsusf_army_ocp_riflemanl",15,0,0],                               // Rifleman (Light)
    ["rhsusf_army_ocp_rifleman",20,0,0],                                // Rifleman
    ["rhsusf_army_ocp_riflemanat",30,0,0],                              // Rifleman (AT)
    ["rhsusf_army_ocp_grenadier",25,0,0],                               // Grenadier
    ["rhsusf_army_ocp_autorifleman",25,0,0],                            // Autorifleman
    ["rhsusf_army_ocp_machinegunner",35,0,0],                           // Heavygunner
    ["rhsusf_army_ocp_marksman",30,0,0],                                // Marksman
    ["rhsusf_army_ocp_javelin",50,10,0],                                // AT Specialist
    ["rhsusf_army_ocp_aa",50,10,0],                                     // AA Specialist
    ["rhsusf_army_ocp_medic",30,0,0],                                   // Combat Life Saver
    ["rhsusf_army_ocp_engineer",30,0,0],                                // Engineer
    ["rhsusf_army_ocp_explosives",30,0,0],                              // Explosives Specialist
    ["rhsusf_army_ocp_sniper",70,5,0],                                  // Sniper
    ["rhsusf_army_ocp_sniper_m107",70,5,0],                             // Sniper (M107)
    ["rhsusf_army_ocp_sniper_m24sws",70,5,0],                           // Sniper (M24 SWS)
    ["rhsusf_army_ocp_combatcrewman",10,0,0],                           // Crewman
    ["rhsusf_army_ocp_rifleman_101st",20,0,0],                          // Para Trooper
    ["rhsusf_army_ocp_helicrew",10,0,0],                                // Helicopter Crew
    ["rhsusf_army_ocp_helipilot",10,0,0],                               // Helicopter Pilot
    ["rhsusf_airforce_jetpilot",10,0,0],                                // Pilot
    ["rhsusf_usmc_recon_marpat_wd_rifleman",20,0,0],                    // Recon Rifleman
    ["rhsusf_usmc_recon_marpat_wd_rifleman_at",30,0,0],                 // Recon Rifleman (AT)
    ["rhsusf_usmc_recon_marpat_wd_machinegunner_m249",25,0,0],          // Recon Autorifleman
    ["rhsusf_usmc_recon_marpat_wd_machinegunner",35,0,0],               // Recon Machine Gunner
    ["rhsusf_usmc_recon_marpat_wd_marksman",30,0,0],                    // Recon Marksman
    ["rhsusf_usmc_recon_marpat_wd_sniper_M107",70,5,0]                  // Recon Sniper (M107)
];

light_vehicles = [
    ["ttt_crane ",30,0,15],                                             // Tilly crash crane
    ["C_Hatchback_01_sport_F",100,0,50],
    ["TCGM_Bike_nht",10,0,0],                                           // TCGM Bike(Black)
    ["rksla3_aircraft_tug_blufor",30,0,15],                             // RKSL Studios Airfield Support Tug(Bluefor)
    ["B_T_Quadbike_01_F",50,0,25],                                      // Quad Bike
    ["rhsusf_m1025_w",100,0,50],                                        // M1025A2
    ["rhsusf_m1025_w_m2",100,40,50],                                    // M1025A2 (M2)
    ["rhsusf_m1025_w_mk19",100,60,50],                                  // M1025A2 (Mk19)
    ["rhsusf_m1045_w",120,80,50],                                       // M1045A2 (TOW)
    ["rhsusf_m998_w_2dr_fulltop",100,0,50],                             // M1097A2 (2D)
    ["rhsusf_m998_w_2dr_halftop",100,0,50],                             // M1097A2 (2D / open back)

    ["rhsusf_m1043_w_m2",120,45,50],                                    //M1043a2 (M2)
    ["rhsusf_m1043_w",120,0,50],                                        //(1043a2)
    ["rhsusf_m1043_w_mk19",120,65,50],                                  //m1043a2 (mk19)
    ["rhsusf_m1151_m2crows_usarmy_w",130,50,50],                        //M1151A1 (Crows/m2)
    ["rhsusf_m1151_mk19crows_usarmy_w",130,70,50],                      //M1151A1 (Crows/mk19)
    ["rhsusf_m1151_m2_v1_usarmy_w",120,50,50],                          //m1151a1 (gpk/m2)
    ["rhsusf_m1151_m240_v1_usarmy_w",120,30,50],                        //m1151a1 (gpk/m240)
    ["rhsusf_m1151_mk19_v1_usarmy_w",120,70,50],                        //m1151a1 (gpk/mk19)
    ["rhsusf_m1151_m2_lras3_v1_usarmy_w",120,75,60],                    //m1151a1 (gpk/m2/lras3)
    ["rhsusf_m1151_m2_v2_usarmy_w",125,45,50],                          //m1151a1 (o-gpk/m2)
    ["rhsusf_m1151_m240_v2_usarmy_w",125,30,50],                        //m1151a1 (o-gpk/m240)
    ["rhsusf_m1151_mk19_v2_usarmy_w",125,70,50],                        //m1151a1 (o-gpk/mk19) 

    ["rhsusf_M1220_usarmy_wd",120,0,60],                                // M1220
    ["rhsusf_M1220_M2_usarmy_wd",120,40,60],                            // M1220 (M2)
    ["rhsusf_M1220_MK19_usarmy_wd",120,60,60],                          // M1220 (Mk19)
    ["rhsusf_M1220_M153_M2_usarmy_wd",140,40,60],                       // M1220 (M2 CROWS)
    ["rhsusf_M1220_M153_MK19_usarmy_wd",140,60,60],                     // M1220 (Mk19 CROWS)
    ["rhsusf_M1232_usarmy_wd",140,0,60],                                // M1232
    ["rhsusf_M1232_M2_usarmy_wd",140,40,60],                            // M1232 (M2)
    ["rhsusf_M1232_MK19_usarmy_wd",140,60,60],                          // M1232 (Mk19)
    ["rhsusf_M1230a1_usarmy_wd",120,0,60],                              // M1230A1 (MEDEVAC)
	["rhsusf_m1240a1_m2crows_usarmy_wd",160,60,60],                     // M1277 (CROWS/M2)
	["rhsusf_m1240a1_mk19crows_usarmy_wd",160,80,60],                   // M1277 (CROWS/Mk19)
    ["rhsusf_M1083A1P2_wd_open_fmtv_usarmy",125,0,75],                  // M1083A1P2 Transport
    ["rhsusf_M1083A1P2_wd_fmtv_usarmy",125,0,75],                       // M1083A1P2 Transport (Covered)
    ["rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy",100,0,50],               // M1083A1P2
    ["rhsusf_M977A4_BKIT_usarmy_wd",125,0,75],                          // M977A4 BKIT
    ["rhsusf_M977A4_BKIT_M2_usarmy_wd",125,40,75],                      // M977A4 BKIT (HMG)
    ["rhsusf_M1117_W",150,50,50],                                       // M1117 ASV
    ["B_T_UGV_01_olive_F",150,0,50],                                    // UGV Stomper
    ["B_T_UGV_01_rcws_olive_F",150,40,50],                              // UGV Stomper (RCWS)
    ["B_T_Boat_Transport_01_F",100,0,25],                               // Assault Boat
    ["B_T_Boat_Armed_01_minigun_F",200,80,75],                          // Speedboat Minigun
    ["rhsusf_mkvsoc",250,200,100],                                      // Mk.V SOCOM
    ["B_SDV_01_F",150,0,50]                                             // SDV
];

heavy_vehicles = [
    ["rhsusf_stryker_m1126_m2_wd",200,150,100],                         // M1126 Stryker (M2)
    ["rhsusf_stryker_m1126_mk19_wd",200,160,100],                       // M1126 Stryker (Mk19)
	["rhsusf_stryker_m1127_m2_wd",200,150,100],							// M1127 Stryker (M2/LRAS3)
	["rhsusf_stryker_m1132_m2_np_wd",200,150,130],						// M1132 Stryker (M2)
    ["rhsusf_stryker_M1134_wd",250,200,150],                            // M1134
    ["B_T_APC_Wheeled_01_cannon_F",200,75,125],                         // AMV-7 Marshall
    ["RHS_M2A2_BUSKI_WD",300,200,150],                                  // M2A2ODS (Busk I)
    ["RHS_M2A3_BUSKIII_wd",300,250,175],                                // M2A3 (Busk III)
    ["RHS_M6_wd",300,250,175],                                          // M6A2
    ["B_T_APC_Tracked_01_AA_F",400,330,200],                            // IFV-6a Cheetah
    ["rhsusf_m1a1aim_tuski_wd",400,350,225],                            // M1A1SA (Tusk I)
    ["rhsusf_m1a2sep1tuskiiwd_usarmy",500,400,250],                     // M1A2SEPv1 (Tusk II)
    ["rhsusf_m1a2sep2wd_usarmy",550,550,450],                           // M1A2SEPV2
    ["B_T_MBT_01_cannon_F",450,400,275],                                // M2A1 Slammer    (Merkava)
    ["B_T_MBT_01_TUSK_F",550,450,300],                                  // M2A4 Slammer UP (Merkava City)
    ["B_T_AFV_Wheeled_01_up_cannon_F",550,550,250],                     // Rhino MGS UP
    ["rhsusf_m109_usarmy",600,1250,300],                                // M109A6
    ["rhsusf_M142_usarmy_WD",600,1800,250]                              // M142 HIMARS
];

air_vehicles = [
    ["C_Plane_Civil_01_F",150,0,100],                                   // Cessna TTx
    ["B_UAV_01_F",75,0,25],                                             // AR-2 Darter
    ["B_UAV_06_F",80,0,30],                                             // AL-6 Pelican (Cargo)
    ["RHS_MELB_MH6M",200,0,100],                                        // MH-6M Little Bird
    ["RHS_MELB_AH6M",200,200,100],                                      // AH-6M Pawnee
    ["RHS_UH1Y_UNARMED",225,0,125],                                     // UH-1Y (Unarmed)
	["RHS_UH1Y_FFAR",225,150,125],                                      // UH-1Y MG
    ["RHS_UH1Y",225,200,125],                                           // UH-1Y
    ["RHS_AH1Z_wd",500,500,200],                                        // AH-1Z (Multi-Role)
    ["RHS_AH64D_wd",750,750,250],                                       // AH-64D (Multi-Role)
    ["RHS_UH60M2",250,0,150],                                           // UH-60M (Unarmed)
    ["RHS_UH60M",250,80,150],                                           // UH-60M
    ["RHS_UH60M_MEV2",300,0,150],                                       // UH-60M MEV2
    ["RHS_UH60M_ESSS",300,350,150],                                     // UH-60M ESSS
    ["vtx_UH60M",250,0,150],                                            // VTX-UH-60-M
    ["vtx_UH60M_MEDEVAC",300,0,150],                                    // VTX-UH-60-MEDEVAC
    ["vtx_MH60M_DAP",300,350,150],                                      // VTX-MH-60-DAP
    ["vtx_MH60M_DAP_MLASS",300,450,250],                                // VTX-MH-60M DAP MLASS
    ["RHS_CH_47F",275,80,175],                                          // CH-47 Chinook (Armed)
    ["rhsusf_CH53E_USMC",300,0,175],                                    // CH-53E Super Stallion
	["rhsusf_CH53e_USMC_cargo",300,0,200],                              // CH-53E Super Stallion (Cargo)
    ["rhsusf_CH53E_USMC_GAU21",300,100,175],                            // CH-53E Super Stallion (GAU-21)
    ["USAF_C130J",200,0,250],                                           // C-130J Super Hercules
    ["USAF_C130J_Cargo",200,0,250],                                     // C-130J Super Hercules (Cargo)
    ["USAF_C17",500,0,400],                                             // C-17 Globemaster III
    ["usaf_kc135",600,0,2500],                                          // KC-135 Stratotanker
    ["B_UAV_02_dynamicLoadout_F",400,400,200],                          // MQ-4A Greyhawk
    ["USAF_MQ9",500,750,200],                                           // MQ-9 Reaper
    ["B_T_UAV_03_dynamicLoadout_F",450,500,250],                        // MQ-12 Falcon
    ["B_UAV_05_F",500,500,200],                                         // UCAV Sentinel
    ["USAF_RQ4A",500,0,200],                                            // RQ-4A Global Hawk

    ["FIR_AV8B_NA",1000,1000,400],                                      // AV-8B Harrier II N/A
    ["FIR_AV8B",1300,1000,400],                                         // AV-8B Harrier II Plus
    ["RHSGREF_A29B_HIDF",700,700,300],                                  // A-29 Super Tucano
    ["I_Plane_Fighter_03_dynamicLoadout_F",1000,900,400],               // A-143
    ["B_Plane_CAS_01_dynamicLoadout_F",1500,1500,500],                  // A-164 Wipeout (CAS)
    ["FIR_F15C",1250,1250,450],                                         // F-15C Eagle
    ["FIR_F15D",1250,1250,450],                                         // F-15D Eagle
    ["FIR_F15E",1250,1500,450],                                         // F-15E Strike Eagle
    ["JS_JC_FA18E",1500,1750,450],                                      // F/A-18 E Super Hornet
    ["JS_JC_FA18F",1500,1750,450],                                      // F/A-18 F Super Hornet
    ["USAF_F22",1800,2000,500],                                         // F-22A Raptor
    ["USAF_F22_EWP_AA",1800,2100,500],                                  // F-22A Raptor (EWP-AA)
    ["USAF_F22_EWP_AG",1800,2100,500],                                  // F-22A Raptor (EWP-AG)
    ["USAF_F22_Heavy",1800,2250,500],                                   // F-22A Raptor (Heavy)
    ["USAF_F35A_STEALTH",2250,2000,750],                                // F-35A Lightning II
    ["USAF_F35A",2250,2250,750],                                        // F-35A Lightning II (Heavy)
    //["B_Plane_Fighter_01_F",1500,1750,450],                             // F/A-181 Black Wasp II
    //["B_Plane_Fighter_01_Stealth_F",1500,1750,450],                     // F/A-181 Black Wasp II (Stealth)
    ["B_T_VTOL_01_armed_F",750,1500,500],                               // V-44 X Blackfish (Armed)
    ["B_T_VTOL_01_infantry_F",750,0,500],                               // V-44 X Blackfish (Infantry)
    ["B_T_VTOL_01_vehicle_F",750,0,500],                                // V-44 X Blackfish (Vehicle)
    ["USAF_AC130U",1000,1800,700]                                       // AC-130U Spooky II
];

static_vehicles = [
    ["RHS_M2StaticMG_MiniTripod_WD",25,40,0],                           // Mk2 HMG .50
    ["RHS_M2StaticMG_WD",25,40,0],                                      // Mk2 HMG .50 (Raised)
    ["RHS_MK19_TriPod_WD",25,60,0],                                     // Mk19 GMG 20mm
    ["RHS_TOW_TriPod_WD",50,100,0],                                     // TOW (AT)
    ["RHS_Stinger_AA_pod_WD",50,100,0],                                 // Stinger (AA)
    ["RHS_M252_WD",80,150,0],                                           // Mk6 Mortar
    ["RHS_M119_WD",100,200,0],                                          // M119A2
    ["B_SAM_System_03_F",250,500,0],                                    // MIM-145 Defender
    ["B_AAA_System_01_F",5000,5000,0],                                  // 1C
    ["B_SAM_System_01_F",8000,8000,0]                                   // Spartan
];

buildings = [
    ["BlockConcrete_F",0,0,0],                  // 混泥土方塊
    ["BWA3_Flag_Ger_F",0,0,0],                  // 未知模組物件
    ["CamoNet_BLUFOR_big_F",0,0,0],
    ["CamoNet_BLUFOR_F",0,0,0],
    ["CamoNet_BLUFOR_open_F",0,0,0],
    ["Flag_NATO_F",0,0,0],
    ["Flag_RedCrystal_F",0,0,0],
    ["Flag_UK_F",0,0,0],
    ["Flag_US_F",0,0,0],
    ["Flag_White_F",0,0,0],
    ["Land_AirstripPlatform_01_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BarGate_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_Bunker_01_HQ_F",0,0,0],
    ["Land_CampingChair_V1_F",0,0,0],
    ["Land_CampingChair_V2_F",0,0,0],
    ["Land_CampingTable_F",0,0,0],
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0],
    ["Land_CncBarrierMedium4_F",0,0,0],
    ["Land_CncBarrierMedium_F",0,0,0],
    ["Land_CncShelter_F",0,0,0],
    ["Land_CncWall1_F",0,0,0],
    ["Land_CncWall4_F",0,0,0],
    ["Land_Concrete_SmallWall_4m_F",0,0,0],
    ["Land_Concrete_SmallWall_8m_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_GH_Stairs_F",0,0,0],
    ["Land_HBarrier_1_F",0,0,0],
    ["Land_HBarrier_3_F",0,0,0],
    ["Land_HBarrier_5_F",0,0,0],
    ["Land_HBarrier_Big_F",0,0,0],
    ["Land_HBarrierTower_F",0,0,0],
    ["Land_HBarrierWall4_F",0,0,0],
    ["Land_HBarrierWall6_F",0,0,0],
    ["Land_HBarrierWall_corner_F",0,0,0],
    ["Land_HBarrierWall_corridor_F",0,0,0],
    ["Land_HelipadCircle_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_LampAirport_F",0,0,0],
    ["Land_LampHalogen_F",0,0,0],
    ["Land_LampSolar_F",0,0,0],
    ["Land_LampStreet_small_F",0,0,0],
    ["Land_LandMark_F",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["Land_Medevac_HQ_V1_F",0,0,0],
    ["Land_Pallet_MilBoxes_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_PaperBox_open_empty_F",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_Pier_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_RampConcrete_f",0,0,0],
    ["Land_Razorwire_F",0,0,0],
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],
    ["Land_Sign_WarningMilitaryArea_F",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["Land_Target_Dueling_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["MapBoard_altis_F",0,0,0],
    ["MapBoard_seismic_F",0,0,0],
    ["MapBoard_stratis_F",0,0,0],
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["RoadCone_L_F",0,0,0],
    ["Target_Swivel_01_left_F",0,0,0],
    ["Target_Swivel_01_right_F",0,0,0],
    ["TargetP_Civ_F",0,0,0],
    ["TargetP_Inf3_Acc1_F",0,0,0],
    ["TFAR_Land_Communication_F",0,0,0]                                // TFAR Land Communication Tower
];

support_vehicles = [
    [Arsenal_typename,100,200,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["FlexibleTank_01_sand_F",10,0,25],          //活動式燃料槽
    ["Land_Cargo20_military_green_F",0,0,5000],  //貨櫃箱(中,軍綠)
    ["Land_Cargo20_red_F",0,5000,0],             //貨櫃箱(中,紅色)
    ["Land_Cargo20_white_F",5000,0,0],           //貨櫃箱(中,白色)
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_machinegunner",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// AT specialists squad.
blufor_squad_at = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// AA specialists squad.
blufor_squad_aa = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// Force recon squad.
blufor_squad_recon = [
    "rhsusf_usmc_recon_marpat_wd_teamleader",
    "rhsusf_usmc_recon_marpat_wd_rifleman",
    "rhsusf_usmc_recon_marpat_wd_rifleman",
    "rhsusf_usmc_recon_marpat_wd_rifleman_at",
    "rhsusf_usmc_recon_marpat_wd_autorifleman",
    "rhsusf_usmc_recon_marpat_wd_machinegunner",
    "rhsusf_usmc_recon_marpat_wd_marksman",
    "rhsusf_usmc_recon_marpat_wd_sniper_M107",
    "rhsusf_navy_sarc_w",
    "rhsusf_usmc_marpat_wd_engineer"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "B_T_AFV_Wheeled_01_up_cannon_F",                                   // Rhino MGS UP
    "rhsusf_mkvsoc",                                                    // Mk.V SOCOM
    "rhsusf_m1a1aim_tuski_wd",                                          // M1A1SA (Tusk I)
    "rhsusf_m1a2sep1tuskiiwd_usarmy",                                   // M1A2SEPv1 (Tusk II)
    "B_T_MBT_01_cannon_F",                                              // M2A1 Slammer    (Merkava)
    "B_T_MBT_01_TUSK_F",                                                // M2A4 Slammer UP (Merkava City)
    "rhsusf_m1a2sep2wd_usarmy",
    "rhsusf_m109_usarmy",                                               // M109A6
	"RHS_AH1Z_wd",                                                      // AH-1Z (Multi-Role)
    "RHS_AH64D_wd",                                                     // AH-64D (Multi-Role)
    "rhsusf_M142_usarmy_WD",
    "B_UAV_02_dynamicLoadout_F",                                        // MQ-4A Greyhawk
    "B_T_UAV_03_dynamicLoadout_F",                                      // MQ-12 Falcon
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "USAF_MQ9",                                                         // MQ-9 Reaper
    "B_Plane_CAS_01_dynamicLoadout_F",                                  // A-164 Wipeout (CAS)
    "USAF_F22",                                                         // F-22A Raptor
    "USAF_F22_EWP_AA",                                                  // F-22A Raptor (EWP-AA)
    "USAF_F22_EWP_AG",                                                  // F-22A Raptor (EWP-AG)
    "USAF_F22_Heavy",                                                   // F-22A Raptor (Heavy)
    "USAF_F35A_STEALTH",                                                // F-35A Lightning II
    "USAF_F35A",                                                        // F-35A Lightning II (Heavy)
    "JS_JC_FA18E",                                                      // F/A-18 E Super Hornet
    "JS_JC_FA18F",                                                      // F/A-18 F Super Hornet
    //"B_Plane_Fighter_01_F",                                             // F/A-181 Black Wasp II
    //"B_Plane_Fighter_01_Stealth_F",                                     // F/A-181 Black Wasp II (Stealth)
    "B_T_VTOL_01_armed_F",                                              // V-44 X Blackfish (Armed)
    "USAF_AC130U"                                                       // AC-130U Spooky II
];
