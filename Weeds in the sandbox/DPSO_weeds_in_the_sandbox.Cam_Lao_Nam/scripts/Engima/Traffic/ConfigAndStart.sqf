/*
* This file contains parameters to config and function call to start an instance of
* traffic in the mission. The file is edited by the mission developer.
*
* See file scripts\Engima\Traffic\documentation.txt for documentation and a full reference of
* how to customize and use Engima's Traffic.
*/

private ["_civ1parameters","_civ2parameters","_redparameters", "_vcparameters", "_indparameters"];

// set traffic parameters.
_civ1parameters = [
    ["side", civilian],
    ["vehicles", ["vn_c_bicycle_01", "vn_c_bicycle_02", "C_Truck_02_transport_F", "C_Truck_02_covered_F"]],
    ["vehicles_count", 2],
    ["min_spawn_distance", 700],
    ["max_spawn_distance", 3000],
    ["AREA_MARKER", "civ_1"],
    ["min_skill", 0.4],
    ["max_skill", 0.6],
    ["DEBUG", false]
];

// Start an instance of the traffic
_civ1parameters spawn ENGIMA_TRAFFIC_StartTraffic;

_civ2parameters = [
    ["side", civilian],
    ["vehicles", ["vn_c_bicycle_01", "vn_c_bicycle_02", "C_Truck_02_transport_F", "C_Truck_02_covered_F"]],
    ["vehicles_count", 2],
    ["min_spawn_distance", 700],
    ["max_spawn_distance", 3000],
    ["AREA_MARKER", "civ_2"],
    ["min_skill", 0.4],
    ["max_skill", 0.6],
    ["DEBUG", false]
];

// Start an instance of the traffic
_civ2parameters spawn ENGIMA_TRAFFIC_StartTraffic;

// set traffic parameters.
_redparameters = [
    ["side", EAST],
    ["vehicles", ["vn_o_bicycle_01_vcmf", "vn_o_bicycle_02_vcmf", "vn_o_wheeled_btr40_mg_02_vcmf", "vn_o_wheeled_btr40_mg_01_vcmf", "vn_o_wheeled_btr40_mg_03_vcmf", "vn_o_wheeled_btr40_02_vcmf", "vn_o_wheeled_btr40_01_vcmf", 
		"vn_o_wheeled_z157_ammo_vcmf", "vn_o_wheeled_z157_mg_01_vcmf", "vn_o_wheeled_z157_fuel_vcmf", "vn_o_wheeled_z157_04_vcmf", "vn_o_wheeled_z157_03_vcmf", "vn_o_wheeled_z157_repair_vcmf", "vn_o_wheeled_z157_mg_02_vcmf", 
		"vn_o_wheeled_z157_01_vcmf", "vn_o_wheeled_z157_02_vcmf"]],
    ["vehicles_count", 2],
    ["min_spawn_distance", 700],
    ["max_spawn_distance", 3000],
    ["AREA_MARKER", "red"],
	["HIDE_AREA_MARKER", true],
    ["min_skill", 0.4],
    ["max_skill", 0.6],
    ["DEBUG", false]
];

// Start an instance of the traffic
_redparameters spawn ENGIMA_TRAFFIC_StartTraffic;

// set traffic parameters.
_vcparameters = [
    ["side", EAST],
    ["vehicles", ["vn_o_bicycle_01", "vn_o_bicycle_02", "vn_o_wheeled_btr40_mg_02", "vn_o_wheeled_btr40_mg_01", "vn_o_wheeled_btr40_mg_03", "vn_o_wheeled_btr40_02", "vn_o_wheeled_btr40_01", "vn_o_wheeled_z157_ammo", "vn_o_wheeled_z157_mg_01", 
		"vn_o_wheeled_z157_fuel", "vn_o_wheeled_z157_04", "vn_o_wheeled_z157_03", "vn_o_wheeled_z157_repair", "vn_o_wheeled_z157_mg_02", "vn_o_wheeled_z157_01", "vn_o_wheeled_z157_02"]],
    ["vehicles_count", 2],
    ["min_spawn_distance", 700],
    ["max_spawn_distance", 3000],
    ["AREA_MARKER", "vc"],
	["HIDE_AREA_MARKER", true],
    ["min_skill", 0.4],
    ["max_skill", 0.6],
    ["DEBUG", false]
];

// Start an instance of the traffic
_vcparameters spawn ENGIMA_TRAFFIC_StartTraffic;


// set traffic parameters.
_indparameters = [
    ["side", INDEPENDENT],
    ["vehicles", ["vn_i_wheeled_m54_03", "vn_i_wheeled_m151_mg_01", "vn_i_wheeled_m151_mg_01_mp", "vn_i_wheeled_m151_01", "vn_i_wheeled_m151_02", "vn_i_wheeled_m151_02_mp", "vn_i_wheeled_m151_01_mp", "vn_i_wheeled_m54_repair", 
		"vn_i_wheeled_m54_fuel", "vn_i_wheeled_m54_ammo", "vn_i_wheeled_m54_01", "vn_i_wheeled_m54_02", "vn_i_armor_m41_01", "vn_i_armor_type63_01"]],
    ["vehicles_count", 2],
    ["min_spawn_distance", 700],
    ["max_spawn_distance", 3000],
    ["AREA_MARKER", "ind"],
	["HIDE_AREA_MARKER", true],
    ["min_skill", 0.4],
    ["max_skill", 0.6],
    ["DEBUG", false]
];

// Start an instance of the traffic
_indparameters spawn ENGIMA_TRAFFIC_StartTraffic;
