/*
* This file contains config parameters and a function call to start the civilian script.
* The parameters in this file may be edited by the mission developer.
*
* See file scripts\Engima\civilians\documentation.txt for documentation and a full reference of
* how to customize and use Engima's civilians.
*/

private ["_parameters"];

// set civilian parameters.
_parameters = [
    ["UNIT_CLASSES",
        [
            "vn_c_men_01",
            "vn_c_men_02",
            "vn_c_men_03",
            "vn_c_men_04",
            "vn_c_men_05",
            "vn_c_men_06",
            "vn_c_men_07",
            "vn_c_men_08",
            "vn_c_men_09",
            "vn_c_men_10",
            "vn_c_men_11",
            "vn_c_men_12",
            "vn_c_men_13",
            "vn_c_men_14",
            "vn_c_men_15",
            "vn_c_men_16",
            "vn_c_men_17",
            "vn_c_men_18",
            "vn_c_men_19",
            "vn_c_men_20",
            "vn_c_men_21",
            "vn_c_men_22",
            "vn_c_men_23",
            "vn_c_men_24",
            "vn_c_men_25",
            "vn_c_men_26",
            "vn_c_men_27",
            "vn_c_men_28",
            "vn_c_men_29",
            "vn_c_men_30",
            "vn_c_men_31",
            "vn_c_men_32"
        ]
    ],
    ["units_PER_BUILDinG", 0.6],
    ["max_groupS_count", 32],
    ["min_spawn_distance", 128],
    ["max_spawn_distance", 768],
    ["BLACKlist_MARKERS", ["no_1", "no_2", "no_3", "no_4", "no_5", "no_6", "no_7", "no_8", "no_9", "no_10", "no_11", "no_12", "no_13", "no_14", "no_15", "no_16", "no_17", "no_18", "no_19", "no_20", "no_21", "no_22", "no_23", "no_24", "no_25", "no_26", "no_27", "no_28", "no_29", "no_30"]],
    ["HIDE_BLACKlist_MARKERS", true],
    ["ON_UNIT_spawnED_callBACK", {}],
    ["ON_UNIT_REmove_callBACK", {
        true
    }],
    ["DEBUG", false]
];

// Start the script
_parameters spawn ENGIMA_civilianS_Startcivilians;