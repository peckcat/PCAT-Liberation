/*
    Needed Mods:
    - RHS GREF

    Optional Mods:

*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V3_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "rhsgref_cdf_b_gaz66_repair";                      // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "rhsgref_cdf_b_gaz66_ap2";                     // This is the mobile respawn (and medical) truck.
huron_typename = "I_Heli_Transport_02_F";                               // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "rhsgref_cdf_b_reg_crew";                           // This defines the crew for vehicles.
pilot_classname = "rhsgref_cdf_b_air_pilot";                            // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "rhsgref_cdf_b_reg_Mi8amt";       // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "rhsgref_cdf_b_ural_open";              // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "O_Radar_System_02_F";             // The building defined to unlock FOB air vehicle functionality.
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
    ["rhsgref_cdf_b_reg_rifleman_lite",  10,  0, 0],
    ["rhsgref_cdf_b_reg_rifleman",       15,  0, 0],
    ["rhsgref_cdf_b_reg_rifleman_aks74", 20,  0, 0],
    ["rhsgref_cdf_b_reg_rifleman_akm",   25,  0, 0],
    ["rhsgref_cdf_b_reg_rifleman_rpg75", 30,  0, 0],
    ["rhsgref_cdf_b_reg_grenadier",      25,  0, 0],
    ["rhsgref_cdf_b_reg_grenadier_rpg",  35,  0, 0],
    ["rhsgref_cdf_b_reg_arifleman_rpk",  25,  0, 0],
    ["rhsgref_cdf_b_reg_machinegunner",  35,  0, 0],
    ["rhsgref_cdf_b_reg_marksman",       30,  0, 0],
    ["rhsgref_cdf_b_reg_specialist_aa",  50, 10, 0],
    ["rhsgref_cdf_b_reg_medic",          30,  0, 0],
    ["rhsgref_cdf_b_reg_engineer",       30,  0, 0],
    ["rhsgref_cdf_b_reg_crew",           10,  0, 0],
    ["rhsgref_cdf_b_air_pilot",          10,  0, 0]
];

light_vehicles = [
    ["ttt_crane ",                   30,    0,   15],  // Tilly crash crane
    ["C_Hatchback_01_sport_F",      100,    0,   50],
    ["rksla3_aircraft_tug_blufor",   30,    0,   15],  // RKSL Studios Airfield Support Tug(Bluefor)
    ["B_Quadbike_01_F",              50,    0,   25],  // Quad Bike
    ["rhsgref_cdf_b_gaz66",          80,    0,   50],
    ["rhsgref_cdf_b_gaz66_flat",     80,    0,   50],
    ["rhsgref_cdf_b_gaz66o",         80,    0,   50],
    ["rhsgref_cdf_b_gaz66o_flat",    80,    0,   50],
    ["rhsgref_cdf_b_gaz66_ap2",      80,    0,  100],
    ["rhsgref_cdf_b_gaz66_ammo",     80,  200,   50],
    ["rhsgref_cdf_b_gaz66_zu23",     80,  100,   50],

    ["rhsgref_cdf_b_ural",          100,    0,   80],
    ["rhsgref_cdf_b_ural_open",     100,    0,   80],
    ["rhsgref_cdf_b_ural_repair",   100,    0,  100],
    ["rhsgref_cdf_b_ural_fuel",     100,    0,  200],
    ["rhsgref_cdf_b_ural_Zu23",     100,  100,   80],

    ["rhsgref_BRDM2UM_b",           150,    0,  100],
    ["rhsgref_BRDM2_HQ_b",          150,   20,  100],
    ["rhsgref_BRDM2_b",             150,   40,  100],
    ["rhsgref_BRDM2_ATGM_b",        150,   80,  100],
    ["rhsgref_cdf_b_btr60",         150,   50,  100],
    ["rhsgref_cdf_b_btr70",         180,   60,  130],
    ["rhsgref_cdf_b_btr80",         200,   80,  150],
    ["rhsgref_cdf_b_reg_BM21",      200, 1500,  200]
];
// ["vehicle_classname",supplies,ammunition,fuel]
heavy_vehicles = [

    ["rhsgref_cdf_b_zsu234",    300,  250,  175],
    ["rhsgref_cdf_b_bmp1p",     200,  150,  100],
    ["rhsgref_cdf_b_bmp2k",     260,  170,  120],
    ["rhs_bmd2m",               200,  150,  150],
    ["rhs_bmp3mera_msv",        300,  250,  200],
    ["rhsgref_cdf_b_2s1",       600, 1000,  300],
    ["rhsgref_cdf_b_t72bb_tv",  400,  250,  200],
    ["rhsgref_cdf_b_t80b_tv",   500,  350,  250], 
    ["rhsgref_cdf_b_t80uk_tv",  600,  450,  300]
];

air_vehicles = [
    ["C_Plane_Civil_01_F",        150,    0,  100],                     // Cessna TTx
    ["B_UAV_01_F",                 75,    0,   25],                     // AR-2 Darter
    ["B_UAV_06_F",                            80,    0,   30],                     // AL-6 Pelican (Cargo)
    ["RHS_AN2_B",                            150,    0,  100],
    ["rhsgref_cdf_b_reg_Mi8amt",             225,    0,  125],
    ["rhsgref_cdf_b_reg_Mi17Sh",             500,  500,  200],
    ["rhsgref_cdf_b_Mi35",                   750,  750,  250],
    ["rhs_l39_cdf_b_cdf",                    500,  400,  350],
    ["I_Plane_Fighter_03_dynamicLoadout_F",  800,  800,  400],
    ["rhsgref_cdf_b_mig29s",     1000,  900,  400],
    ["rhsgref_cdf_b_su25",        900, 1000,  400]
];

static_vehicles = [
    ["RHS_NSV_TriPod_VDV",25,40,0],                                     // NSV Low Tripod  (.50 HMG)
    ["rhs_KORD_high_VDV",25,40,0],                                      // KORD High Tripod (.50 HMG)
    ["rhs_2b14_82mm_msv",25,80,0],                                      // 2B14-1'Podnos'
    ["RHS_AGS30_TriPod_VDV",25,60,0],                                   // AGS30 Low Tripod (Auto Grenade launcher)
    ["rhs_Kornet_9M133_2_vdv",50,100,0],                                // Kornet (AT)
    ["rhs_Metis_9k115_2_vdv",50,100,0],                                 // 9K115-2 'Metis-M (AT)
    ["rhs_Igla_AA_pod_vdv",50,100,0],                                   // Igla Pod (AA)
    ["RHS_ZU23_VDV",80,120,0],                                          // ZU-23
    ["rhs_SPG9M_VDV",40,90,0],                                          // SPG-9 Low Tripod
    ["rhs_D30_vdv",100,200,0],                                          // D-30
    ["rhs_D30_at_vdv",100,200,0],                                       // D-30 AT
    ["O_SAM_System_04_F",250,500,0]                                     // S-750
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
    "rhsgref_cdf_b_reg_squadleader",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_grenadier_rpg",
    "rhsgref_cdf_b_reg_grenadier",
    "rhsgref_cdf_b_reg_rifleman",
    "rhsgref_cdf_b_reg_rifleman",
    "rhsgref_cdf_b_reg_medic"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "rhsgref_cdf_b_reg_squadleader",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_grenadier_rpg",
    "rhsgref_cdf_b_reg_grenadier_rpg",
    "rhsgref_cdf_b_reg_grenadier",
    "rhsgref_cdf_b_reg_rifleman_rpg75",
    "rhsgref_cdf_b_reg_rifleman",
    "rhsgref_cdf_b_reg_engineer",
    "rhsgref_cdf_b_reg_medic"
];

// AT specialists squad.
blufor_squad_at = [
    "rhsgref_cdf_b_reg_squadleader",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_grenadier_rpg",
    "rhsgref_cdf_b_reg_grenadier_rpg",
    "rhsgref_cdf_b_reg_grenadier_rpg",
    "rhsgref_cdf_b_reg_grenadier",
    "rhsgref_cdf_b_reg_rifleman",
    "rhsgref_cdf_b_reg_medic"
];

// AA specialists squad.
blufor_squad_aa = [
    "rhsgref_cdf_b_reg_squadleader",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_machinegunner",
    "rhsgref_cdf_b_reg_specialist_aa",
    "rhsgref_cdf_b_reg_specialist_aa",
    "rhsgref_cdf_b_reg_specialist_aa",
    "rhsgref_cdf_b_reg_grenadier",
    "rhsgref_cdf_b_reg_rifleman",
    "rhsgref_cdf_b_reg_medic"
];

// Force recon squad.
blufor_squad_recon = [
    "rhsgref_cdf_b_reg_squadleader", 
    "rhsgref_cdf_b_reg_machinegunner", 
    "rhsgref_cdf_b_reg_machinegunner", 
    "rhsgref_cdf_b_reg_marksman", 
    "rhsgref_cdf_b_reg_marksman", 
    "rhsgref_cdf_b_reg_engineer",
    "rhsgref_cdf_b_reg_rifleman",
    "rhsgref_cdf_b_reg_medic"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_rifleman_akm",
    "rhsgref_cdf_b_reg_medic"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "rhsgref_cdf_b_zsu234",
    "rhsgref_cdf_b_2s1",
    "rhs_bmd2m",
    "rhs_bmp3mera_msv",
    "rhsgref_cdf_b_btr80",
    "rhsgref_cdf_b_t80b_tv",
    "rhsgref_cdf_b_t80uk_tv",
    "rhsgref_cdf_b_Mi35",
    "rhs_l159_cdf_b_CDF",
    "rhsgref_cdf_b_mig29s",
    "rhsgref_cdf_b_su25"
];
