/*
    Needed Mods:
    - None

    Optional Mods:
    - BWMod
    - RHSUSAF
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
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
FOB_truck_typename = "B_Truck_01_box_F";                                // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "B_Truck_01_medical_F";                        // This is the mobile respawn (and medical) truck.
huron_typename = "B_Heli_Transport_03_unarmed_F";                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "B_crew_F";                                         // This defines the crew for vehicles.
pilot_classname = "B_Helipilot_F";                                      // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "B_Heli_Light_01_F";              // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "B_Truck_01_transport_F";               // These are the trucks which are used in the logistic convoy system.
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
    ["B_Soldier_lite_F",15,0,0],                                        // Rifleman (Light)
    ["B_Soldier_F",20,0,0],                                             // Rifleman
    ["B_soldier_LAT_F",30,0,0],                                         // Rifleman (AT)
    ["B_Soldier_GL_F",25,0,0],                                          // Grenadier
    ["B_soldier_AR_F",25,0,0],                                          // Autorifleman
    ["B_HeavyGunner_F",35,0,0],                                         // Heavygunner
    ["B_soldier_M_F",30,0,0],                                           // Marksman
    ["B_Sharpshooter_F",40,0,0],                                        // Sharpshooter
    ["B_soldier_AT_F",50,10,0],                                         // AT Specialist
    ["B_soldier_AA_F",50,10,0],                                         // AA Specialist
    ["B_medic_F",30,0,0],                                               // Combat Life Saver
    ["B_engineer_F",30,0,0],                                            // Engineer
    ["B_soldier_exp_F",30,0,0],                                         // Explosives Specialist
    ["B_recon_F",20,0,0],                                               // Recon Scout
    ["B_recon_LAT_F",30,0,0],                                           // Recon Scout (AT)
    ["B_recon_M_F",30,0,0],                                             // Recon Marksman
    ["B_Recon_Sharpshooter_F",40,0,0],                                  // Recon Sharpshooter
    ["B_recon_medic_F",30,0,0],                                         // Recon Paramedic
    ["B_recon_exp_F",30,0,0],                                           // Recon Demolition Expert
    ["B_sniper_F",70,5,0],                                              // Sniper
    ["B_ghillie_ard_F",70,5,0],                                         // Sniper (Arid)
    ["B_ghillie_lsh_F",70,5,0],                                         // Sniper (Lush)
    ["B_ghillie_sard_F",70,5,0],                                        // Sniper (Semi-Arid)
    ["B_spotter_F",20,0,0],                                             // Spotter
    ["B_crew_F",10,0,0],                                                // Crewman
    ["B_soldier_PG_F",20,0,0],                                          // Para Trooper
    ["B_helicrew_F",10,0,0],                                            // Helicopter Crew
    ["B_Helipilot_F",10,0,0],                                           // Helicopter Pilot
    ["B_Pilot_F",10,0,0]                                                // Pilot
];

light_vehicles = [
    ["ttt_crane ",30,0,15],                                             // Tilly crash crane
    ["C_Hatchback_01_sport_F",100,0,50],
    ["rksla3_aircraft_tug_blufor",30,0,15],                             // RKSL Studios Airfield Support Tug(Bluefor)
    ["Peral_AS32A",30,0,15],
    ["Peral_B600",30,0,15],
    ["Peral_H2_Forklift",30,0,15],
    ["Peral_MJ_1E",30,0,15],
    ["Peral_USN6",30,0,15],
    ["B_Quadbike_01_F",50,0,25],                                        // Quad Bike
    ["B_LSV_01_unarmed_F",75,0,50],                                     // Prowler
    ["B_LSV_01_armed_F",75,40,50],                                      // Prowler (HMG)
    ["B_LSV_01_AT_F",75,60,50],                                         // Prowler (AT)
    ["B_MRAP_01_F",100,0,50],                                           // Hunter
    ["B_MRAP_01_hmg_F",100,40,50],                                      // Hunter (HMG)
    ["B_MRAP_01_gmg_F",100,60,50],                                      // Hunter (GMG)
    ["I_MRAP_03_F",100,0,50],                                           // Strider
    ["I_MRAP_03_hmg_F",100,40,50],                                      // Strider (HMG)
    ["I_MRAP_03_gmg_F",100,60,50],                                      // Strider (GMG)
    ["B_Truck_01_transport_F",125,0,75],                                // HEMTT Transport
    ["B_Truck_01_covered_F",125,0,75],                                  // HEMTT Transport (Covered)
    ["B_UGV_01_F",150,0,50],                                            // UGV Stomper
    ["B_UGV_01_rcws_F",150,40,50],                                      // UGV Stomper (RCWS)
    ["B_Boat_Transport_01_F",100,0,25],                                 // Assault Boat
    ["B_Boat_Armed_01_minigun_F",200,80,75],                            // Speedboat Minigun
    ["B_SDV_01_F",150,0,50]                                             // SDV
];

heavy_vehicles = [
    ["I_LT_01_scout_F",200,0,125],                                      // AWC 302 Nyx (AA)
    ["B_APC_Wheeled_01_cannon_F",200,75,125],                           // AMV-7 Marshall
    ["I_APC_Wheeled_03_cannon_F",200,75,125],                           // AFV-4 Gorgon
    ["B_APC_Tracked_01_rcws_F",300,100,150],                            // IFV-6c Panther
    ["I_APC_tracked_03_cannon_F",300,150,150],                          // FV-720 Mora
    ["B_APC_Tracked_01_AA_F",300,250,175],                              // IFV-6a Cheetah
    ["I_LT_01_AA_F",300,250,175],                                       // AWC 302 Nyx (AA)
    ["I_LT_01_AT_F",300,250,175],                                       // AWC 302 Nyx (AT)
    ["I_LT_01_cannon_F",300,250,175],                                   // AWC 302 Nyx (Cannon)
    ["B_MBT_01_cannon_F",400,300,200],                                  // M2A1 Slammer
    ["I_MBT_03_cannon_F",400,300,200],                                  // MBT-52 Kuma
    ["B_MBT_01_TUSK_F",500,350,225],                                    // M2A4 Slammer UP
    ["B_AFV_Wheeled_01_cannon_F",500,500,250],                          // Rhino MGS
    ["B_AFV_Wheeled_01_up_cannon_F",550,550,250],                       // Rhino MGS UP
    ["B_MBT_01_arty_F",600,1250,300],                                   // M4 Scorcher
    ["B_MBT_01_mlrs_F",800,1750,400]                                    // M5 Sandstorm MLRS    
];

air_vehicles = [
    ["B_UAV_01_F",75,0,25],                                             // AR-2 Darter
    ["B_UAV_06_F",80,0,30],                                             // AL-6 Pelican (Cargo)
    ["B_Heli_Light_01_F",200,0,100],                                    // MH-9 Hummingbird
    ["B_Heli_Light_01_dynamicLoadout_F",200,100,100],                   // AH-9 Pawnee
    ["I_Heli_light_03_unarmed_F",225,0,125],                            // WY-55 Hellcat
    ["I_Heli_light_03_dynamicLoadout_F",225,200,125],                   // WY-55 Hellcat (Armed)
    ["B_Heli_Attack_01_dynamicLoadout_F",500,400,200],                  // AH-99 Blackfoot
    ["B_Heli_Transport_01_F",250,80,150],                               // UH-80 Ghost Hawk
    ["B_Heli_Transport_01_camo_F",250,80,150],                          // UH-80 Ghost Hawk (Camo)
    ["B_Heli_Transport_03_F",300,80,175],                               // CH-67 Huron (Armed)
    ["rhsusf_CH53E_USMC",300,0,175],                                    // CH-53E Super Stallion
    ["B_UAV_02_dynamicLoadout_F",400,400,200],                          // MQ-4A Greyhawk
    ["B_T_UAV_03_dynamicLoadout_F",450,500,250],                        // MQ-12 Falcon
    ["B_UAV_05_F",500,500,200],                                         // UCAV Sentinel
    ["I_Plane_Fighter_03_dynamicLoadout_F",500,400,350],                // A-143 Buzzard
    ["B_Plane_CAS_01_dynamicLoadout_F",1000,800,400],                   // A-164 Wipeout (CAS)
    ["B_Plane_Fighter_01_F",1500,1750,450],                             // F/A-181 Black Wasp II
    ["B_Plane_Fighter_01_Stealth_F",1500,1750,450],                     // F/A-181 Black Wasp II (Stealth)
    ["B_T_VTOL_01_armed_F",750,1500,500],                               // V-44 X Blackfish (Armed)
    ["B_T_VTOL_01_infantry_F",750,0,500],                               // V-44 X Blackfish (Infantry)
    ["B_T_VTOL_01_vehicle_F",750,0,500]                                 // V-44 X Blackfish (Vehicle)
];

static_vehicles = [
    ["B_HMG_01_F",25,40,0],                                             // Mk30A HMG .50
    ["B_HMG_01_high_F",25,40,0],                                        // Mk30 HMG .50 (Raised)
    ["B_HMG_01_A_F",35,40,0],                                           // Mk30 HMG .50 (Autonomous)
    ["B_G_HMG_02_F",30,40,0],                                           // M2 HMG .50  update:06/20
    ["B_G_HMG_02_high_F",30,40,0],                                      // M2 HMG .50 (Raised) update:06/20
    ["B_GMG_01_F",35,60,0],                                             // Mk32A GMG 20mm
    ["B_GMG_01_high_F",35,60,0],                                        // Mk32 GMG 20mm (Raised)
    ["B_GMG_01_A_F",45,60,0],                                           // Mk32 GMG 20mm (Autonomous)
    ["B_static_AT_F",50,100,0],                                         // Static Titan Launcher (AT)
    ["B_static_AA_F",50,100,0],                                         // Static Titan Launcher (AA)
    ["B_Mortar_01_F",80,150,0],                                         // Mk6 Mortar
    ["B_SAM_System_03_F",250,500,0]                                     // MIM-145 Defender
];

buildings = [
    ["BlockConcrete_F",0,0,0],                                          // 混泥土方塊
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
    ["Peral_600K_fire_extinguisher",0,0,0],
    ["Peral_AS32A_towbar",0,0,0],
    ["Peral_B600_towbar",0,0,0],
    ["Peral_B809E",0,0,0],
    ["Peral_pedestrian_barrier",0,0,0],
    ["Peral_pilot_boarding_ladder",0,0,0],
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
    ["FlexibleTank_01_sand_F",10,0,25],                                   // 活動式燃料槽 update:06/20
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",325,0,75],                                   // HEMTT Repair
    ["B_Truck_01_fuel_F",125,0,275],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",125,200,75],                                   // HEMTT Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "B_Soldier_TL_F",
    "B_Soldier_F",
    "B_Soldier_F",
    "B_Soldier_LAT_F",
    "B_Soldier_GL_F",
    "B_soldier_AR_F",
    "B_soldier_AR_F",
    "B_soldier_M_F",
    "B_medic_F",
    "B_engineer_F"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "B_Soldier_TL_F",
    "B_Soldier_LAT_F",
    "B_Soldier_LAT_F",
    "B_Soldier_GL_F",
    "B_soldier_AR_F",
    "B_soldier_AR_F",
    "B_HeavyGunner_F",
    "B_Sharpshooter_F",
    "B_medic_F",
    "B_engineer_F"
];

// AT specialists squad.
blufor_squad_at = [
    "B_Soldier_TL_F",
    "B_Soldier_F",
    "B_Soldier_F",
    "B_soldier_AT_F",
    "B_soldier_AT_F",
    "B_soldier_AT_F",
    "B_medic_F",
    "B_soldier_F"
];

// AA specialists squad.
blufor_squad_aa = [
    "B_Soldier_TL_F",
    "B_Soldier_F",
    "B_Soldier_F",
    "B_soldier_AA_F",
    "B_soldier_AA_F",
    "B_soldier_AA_F",
    "B_medic_F",
    "B_soldier_F"
];

// Force recon squad.
blufor_squad_recon = [
    "B_recon_TL_F",
    "B_recon_F",
    "B_recon_F",
    "B_recon_LAT_F",
    "B_recon_M_F",
    "B_recon_M_F",
    "B_Recon_Sharpshooter_F",
    "B_Recon_Sharpshooter_F",
    "B_recon_medic_F",
    "B_recon_exp_F"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F",
    "B_soldier_PG_F"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "B_MBT_01_TUSK_F",                                                  // M2A4 Slammer UP
    "B_MBT_01_arty_F",                                                  // M4 Scorcher
    "B_MBT_01_mlrs_F",                                                  // M5 Sandstorm MLRS
    "B_Heli_Attack_01_dynamicLoadout_F",                                // AH-99 Blackfoot
    "B_UAV_02_dynamicLoadout_F",                                        // MQ-4A Greyhawk
    "B_T_UAV_03_dynamicLoadout_F",                                      // MQ-12 Falcon
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "B_Plane_CAS_01_dynamicLoadout_F",                                  // A-164 Wipeout (CAS)
    "B_Plane_Fighter_01_F",                                             // F/A-181 Black Wasp II
    "B_Plane_Fighter_01_Stealth_F",                                     // F/A-181 Black Wasp II (Stealth)
    "B_T_VTOL_01_armed_F"                                               // V-44 X Blackfish (Armed)
];
