﻿/*
	=======================================================================================================================
	NOTES FOR MISSION EDITORS (please take a few time to read and understand these lines to avoid any issue)
	=======================================================================================================================

	 - Adding custom mods into OPEX is your responsibility, so if you do so, please do it at your own risk and don't complain if something doesn't work as intended.
	 - Adding custom mods into OPEX requires some scripting skills and above all a lot of concentration - a single wrong data can break the whole mission so keep that in mind at any time.
	 - Keep the same variables types : some of them must be strings (""), some others are arrays ([]) etc... so double check before doing anything.
	 - Do NOT delete anything in PART 2.
	 - Do NOT edit or delete anything in PART 3.
	 - Do NOT let any variable undefined or empty in PART 4.
	 - If you want to add something to the vanilla content (if variable is an array), use this command: OPEX_exampleArray append ["myCustomData1", "myCustomData2", "myCustomData3", ""myCustomDataN"]
	 - If you want to replace the vanilla content (if variable is an array), use this command: OPEX_exampleArray = ["myCustomData1", "myCustomData2", "myCustomData3", ""myCustomDataN"]
	 - So be aware of how the variables are defined (with " = " or " append ") !
	 - If you want to use vanilla content, simply remove the data (for example, if your mod doesn't have any aircraft, simply remove the line that defines OPEX_friendly_aircrafts).
	 - Tip: if you want to increase the probability of usaage of a specific item, list it several times (example: OPEX_exampleArray = ["myCustomData1", "myCustomData1", "myCustomData1", ""myCustomData2"] means that "myCustomData1" has 3 times more chances to be used than "myCustomData2")
	 - When your template is ready, don't forget to enable it by editing the "settings\init.sqf" file.
	 - If you want your custom mod to be officially integrated into OPEX, please be sure your template is 100% working and send it to gemini.69@free.fr

	If you need help, please contact me:
	 - on the OPEX public comments on Steam (please do NOT add me to your friend list): https://steamcommunity.com/workshop/filedetails/?id=908003375
	 - on the official OPEX forum: https://forums.bohemia.net/forums/topic/194070-opex/
	 - by email: gemini.69@free.fr

	I will provide as much support as I can but please keep in mind that I'm alone and I'm developping OPEX on my free time.

	- Gemini
*/

// =======================================================================================================================
// PART 1 (you need AT LEAST ONE ENTRY to avoid this custom mod loading on computers that don't have it)
// =======================================================================================================================

	if (!(isClass (configFile >> "CfgPatches" >> "CUP_Vehicles_Core"))) exitWith {}; // replace "xxxxx" by the name of the file you need to check
	if (!(isClass (configFile >> "CfgPatches" >> "CUP_Weapons_WeaponsCore"))) exitWith {}; // replace "xxxxx" by the name of the file you need to check
	if (!(isClass (configFile >> "CfgPatches" >> "CUP_Creatures_Extra"))) exitWith {}; // replace "xxxxx" by the name of the file you need to check

// =======================================================================================================================
// PART 2 (you HAVE to edit these variables but DO NOT DELETE them !)
// =======================================================================================================================

	_OPEX_enemy_modName = "CUP"; // mod name (example: "myCustomMod")
	_OPEX_enemy_subFaction = "STR_enemy_name_TALIB_4"; // e.g.; "Talibans"
	_OPEX_enemy_factionName1 = "STR_enemy_name_TALIB_1"; // e.g.: The islamic State
	_OPEX_enemy_factionName2 = "STR_enemy_name_TALIB_2"; // e.g.: the islamic state
	_OPEX_enemy_factionName3 = "STR_enemy_name_TALIB_3"; // e.g.: Daesh
	_OPEX_enemy_factionName4 = "STR_enemy_name_TALIB_4"; // e.g.: Daesh
	_OPEX_enemy_fighters = "STR_enemy_fighters_TALIB"; // e.g.: islamists

// =======================================================================================================================
// PART 3 (DO NOT EDIT OR DELETE these lines !)
// =======================================================================================================================

	// ENABLING FACTION
	waitUntil {!isNil "OPEX_enemy_factions"};
	if (isServer) then {OPEX_enemy_factions append [[_OPEX_enemy_subFaction, _OPEX_enemy_modName]]}; publicVariable "OPEX_enemy_factions";

	// WAITING FOR FACTION SELECTION
	waitUntil {!isNil "OPEX_params_ready"};
	waitUntil {OPEX_params_ready};
	if (OPEX_param_enemyFaction != ((localize _OPEX_enemy_subFaction) + " " + "(" + _OPEX_enemy_modName + ")")) exitWith {};

	// CONFIRMING FACTION NAMES
	OPEX_enemy_modName = _OPEX_enemy_modName;
	OPEX_enemy_subFaction = _OPEX_enemy_subFaction;
	OPEX_enemy_factionName1 = _OPEX_enemy_factionName1;
	OPEX_enemy_factionName2 = _OPEX_enemy_factionName2;
	OPEX_enemy_factionName3 = _OPEX_enemy_factionName3;
	OPEX_enemy_factionName4 = _OPEX_enemy_factionName4;
	OPEX_enemy_fighters = _OPEX_enemy_fighters;

// =======================================================================================================================
// PART 4 (DO NOT LET ANY VARIABLE UNDEFINED OR EMPTY)
//		- if you don't know what a variable is about, please ask
//		- if you don't need to define a variable, simply delete the line (default content will be used instead)
// =======================================================================================================================

	// FLAG
	OPEX_enemy_flagTexture = "pictures\flag_taliban.paa";

	// AI GLOBAL SKILL
	OPEX_enemy_AIskill = [0.10, 0.50]; // [lowest possible level, highest possible level]

	// IDENTITIES
	OPEX_enemy_names = ["Abdel Brahimi", "Youcef Brahimi", "Djalil Brahimi", "Rachid Brahimi", "Ahmed Brahimi", "Amine El Tarkouri", "Djawad El Boukhrissi", "Habid Bounar", "Saïd Ben Youcef", "Habid Ben Youssef", "Saïd Bennacer", "Allah Bennacer", "Khaled Daouadi", "Djamal Bennacer", "Ismaël Slimani", "Ismaïl Abdellaoui", "Khaled Abdellaoui", "Ahmed Abdellaoui", "Zinedine al-Bagdadi", "Khaled Mansouri", "Ibrahim Mazraoui", "Habib Mazraoui", "Abdelatif Boutaïb", "Karim Idrissi", "Karim Chafik", "Mehdi El Hajjam", "Hicham al-Arabi", "Karim al-Muslim", "Allah al-Boukrissi", "Ismaël al-Arabbi", "Karim Ben Youssef", "Zinedine Benharda", "Ahmed Bentaleb", "Rachid Benatia", "Rachid al-Malawi", "Mehdi Touati", "Abdelkrim Driddi", "Abdelkrim al-Tayeb", "Issam Tayeb", "Oussama Bennasser", "Mohammed Mazraoui", "Mohamed el-Fahaoui", "Mohammed Benzema", "Khalid Ben Arfa", "Yacine Bouderbala", "Mourad Benzia", "Ahmed Bentala", "Driss El Karkouri", "Habib Hadji", "Islam al-Tayeb", "Islam Al Khaled", "Issam Ben Laden", "Djawad Benzema", "Khaled Merah", "Samir Merah", "Bilal Merah", "Hamza Ben Ouarda", "Idriss Ben Yecin", "Ibrahim Ben Malik", "Malik Bouderbalah", "Rayan Ben Mabrouk", "Khalid Ben Mabrouk", "Khalid Ben Malek", "Malek al-Wahda", "Nasser Boutaleb", "Nacer Ramhadi", "Nasser Soltani"];; // names used by the AI

	// UNITS
	OPEX_enemy_rifleman = "CUP_O_TK_INS_Soldier";
	OPEX_enemy_teamLeader = "CUP_O_TK_INS_Soldier_TL";
	OPEX_enemy_grenadier = "CUP_O_TK_INS_Soldier_GL";
	OPEX_enemy_MG = "CUP_O_TK_INS_Soldier_MG";
	OPEX_enemy_AT = "CUP_O_TK_INS_Soldier_AT";
	OPEX_enemy_AA = "CUP_O_TK_INS_Soldier_AA";
	OPEX_enemy_marksman = "CUP_O_TK_INS_Sniper";
	OPEX_enemy_crewman = "CUP_O_TK_INS_Soldier_Enfield";
	OPEX_enemy_commonUnits = [OPEX_enemy_rifleman, OPEX_enemy_rifleman, OPEX_enemy_rifleman, OPEX_enemy_rifleman, OPEX_enemy_rifleman]; // don't delete this line if you have defined any of these variables
	OPEX_enemy_specialUnits = [OPEX_enemy_grenadier, OPEX_enemy_MG, OPEX_enemy_AT, OPEX_enemy_AA, OPEX_enemy_marksman]; // don't delete this line if you have defined any of these variables
	OPEX_enemy_units = OPEX_enemy_commonUnits + OPEX_enemy_commonUnits + OPEX_enemy_specialUnits; // don't delete this line if you have defined any of these variables

	// VEHICLES
	OPEX_enemy_transportTrucks = ["CUP_O_Kamaz_RU","CUP_O_Kamaz_Open_RU","CUP_O_Ural_RU","CUP_O_Ural_Open_RU"];
	OPEX_enemy_fuelTrucks = ["CUP_O_Kamaz_Refuel_RU","CUP_O_Ural_Refuel_RU"];
	OPEX_enemy_transportCars = ["CUP_O_UAZ_Unarmed_RU","CUP_O_UAZ_Open_RU","CUP_O_Datsun_4seat","CUP_O_Datsun_4seat"];
	OPEX_enemy_combatCars = ["CUP_O_Datsun_PK","CUP_O_Datsun_PK_Random","CUP_O_UAZ_MG_RU","CUP_O_UAZ_SPG9_RU"];
	OPEX_enemy_motorizedVehicles = OPEX_enemy_transportTrucks + OPEX_enemy_transportCars + OPEX_enemy_combatCars; // don't delete this line if you have defined any of these variables
	OPEX_enemy_zodiacs = ["CUP_O_PBX_RU"];
	OPEX_enemy_boats = OPEX_enemy_zodiacs + OPEX_enemy_ships; // don't delete this line if you have defined any of these variables
	OPEX_enemy_armored = ["CUP_O_T72_RU","CUP_O_T90_RU","CUP_O_BMP2_RU","CUP_O_BMP_HQ_RU","CUP_O_BMP3_RU","CUP_O_BRDM2_RUS","CUP_O_BTR60_Green_RU","CUP_O_BTR60_RU","CUP_O_BTR90_RU","CUP_O_GAZ_Vodnik_PK_RU","CUP_O_GAZ_Vodnik_BPPU_RU","CUP_O_GAZ_Vodnik_BPPU_RU"];
	OPEX_enemy_MGstatics = ["CUP_O_KORD_high_RU"];
	OPEX_enemy_GLstatics = ["CUP_O_AGS_RU"];
	OPEX_enemy_ATstatics = ["CUP_O_Metis_RU"];
	OPEX_enemy_AAstatics = ["CUP_O_Igla_AA_pod_RU"];
	OPEX_enemy_mortarStatics = ["CUP_O_2b14_82mm_RU"];
	OPEX_enemy_AAbatteries = ["CUP_O_ZU23_RU"];
	OPEX_enemy_artilleryBatteries = ["CUP_O_D30_RU"];
	OPEX_enemy_statics = OPEX_enemy_MGstatics + OPEX_enemy_GLstatics + OPEX_enemy_ATstatics + OPEX_enemy_AAstatics + OPEX_enemy_mortarStatics; // don't delete this line if you have defined any of these variables

	// WEAPONS
	OPEX_enemy_commonHandguns = ["CUP_hgun_Makarov"];
	OPEX_enemy_specialHandguns = ["CUP_hgun_MicroUzi","CUP_hgun_Mac10","CUP_hgun_TaurusTracker455","CUP_hgun_M9","CUP_hgun_Glock17_blk","CUP_hgun_Duty","CUP_hgun_Compact","CUP_hgun_PB6P9"];
	OPEX_enemy_commonRifles = ["CUP_arifle_AK47_Early","CUP_arifle_AK47_Early","CUP_arifle_AK47_Early","CUP_arifle_AK47_Early","CUP_arifle_AK47_Early","CUP_arifle_AK74_Early","CUP_arifle_AK74_Early","CUP_arifle_AK74_Early","CUP_arifle_AK74M","CUP_arifle_AK74M_top_rail","CUP_arifle_AK74","CUP_arifle_AK74_top_rail","CUP_arifle_AKM_Early","CUP_arifle_AKM","CUP_arifle_AKM_top_rail","CUP_arifle_AKMS_Early","CUP_arifle_AKMS","CUP_arifle_AKMS_top_rail","CUP_arifle_AK47","CUP_arifle_AK47","CUP_arifle_AK47","CUP_arifle_AK47_top_rail","CUP_arifle_AKS","CUP_arifle_AKS_top_rail","CUP_arifle_AKS74_Early","CUP_arifle_AKS74","CUP_arifle_AKS74_top_rail","CUP_srifle_LeeEnfield","CUP_srifle_M14","CUP_arifle_Sa58P","CUP_arifle_Sa58V","CUP_arifle_TYPE_56_2_Early","CUP_arifle_TYPE_56_2","CUP_arifle_TYPE_56_2_top_rail"];
	OPEX_enemy_specialRifles = ["CUP_arifle_AK101","CUP_arifle_AK101_top_rail","CUP_arifle_AK102","CUP_arifle_AK102_top_rail","CUP_arifle_AK103","CUP_arifle_AK103_top_rail","CUP_arifle_AK104","CUP_arifle_AK104_top_rail","CUP_arifle_AK105","CUP_arifle_AK105_top_rail","CUP_arifle_AKS74U","CUP_arifle_AKS74U_top_rail","CUP_arifle_M16A1","CUP_arifle_M16A2","CUP_arifle_M16A4_Base"];
	OPEX_enemy_GLrifles = ["CUP_arifle_AK101_GL","CUP_arifle_AK101_GL_top_rail","CUP_arifle_AK103_GL","CUP_arifle_AK103_GL_top_rail","CUP_arifle_AK74_GL_Early","CUP_arifle_AK74_GL_Early","CUP_arifle_AK74_GL_Early","CUP_arifle_AK74M_GL","CUP_arifle_AK74M_GL_top_rail","CUP_arifle_AK74_GL","CUP_arifle_AK74_GL_top_rail","CUP_arifle_AK47_GL_Early","CUP_arifle_AKM_GL_Early","CUP_arifle_AKM_GL","CUP_arifle_AKM_GL_top_rail","CUP_arifle_AKMS_GL_Early","CUP_arifle_AKMS_GL","CUP_arifle_AKMS_GL_top_rail","CUP_arifle_AK47_GL","CUP_arifle_AK47_GL_top_rail","CUP_arifle_AKS74_GL_Early","CUP_arifle_AKS74_GL","CUP_arifle_AKS74_GL_top_rail","CUP_arifle_M16A1GL","CUP_arifle_M16A2_GL","CUP_arifle_M16A4_GL"];
	OPEX_enemy_MGrifles = ["CUP_lmg_M240","CUP_lmg_m249_pip1","CUP_lmg_m249_pip3","CUP_lmg_m249_pip4","CUP_lmg_M249_E2","CUP_lmg_m249_pip2","CUP_lmg_m249_para","CUP_lmg_M60","CUP_lmg_M60E4_norail","CUP_lmg_M60E4","CUP_lmg_PKM","CUP_lmg_PKM","CUP_lmg_PKM","CUP_lmg_PKM","CUP_lmg_PKM","CUP_lmg_Pecheneg"];
	OPEX_enemy_precisionRifles = ["CUP_srifle_CZ550","CUP_srifle_CZ550_rail","CUP_srifle_M24_blk"];
	OPEX_enemy_sniperRifles = ["CUP_srifle_SVD","CUP_srifle_SVD_top_rail"];
	OPEX_enemy_ATlaunchers = ["CUP_launch_RPG7V","CUP_launch_RPG7V","CUP_launch_RPG7V","CUP_launch_RPG7V","CUP_launch_RPG7V","CUP_launch_M72A6_Loaded","CUP_launch_MAAWS","CUP_launch_RPG18_Loaded"];
	OPEX_enemy_AAlaunchers = ["CUP_launch_9K32Strela_Loaded","CUP_launch_FIM92Stinger_Loaded"];

	// VARIOUS ITEMS
	OPEX_enemy_handGrenades = ["HandGrenade"];
	OPEX_enemy_smokeGrenades_white = ["SmokeShell"];
	OPEX_enemy_explosives = ["IEDLandBig_Remote_Mag", "IEDUrbanBig_Remote_Mag", "IEDLandSmall_Remote_Mag", "IEDUrbanSmall_Remote_Mag"];
	OPEX_enemy_binoculars = ["Binocular"];
	OPEX_enemy_toolKits = ["ToolKit"];
	OPEX_enemy_medikits = ["Medikit"];
	OPEX_enemy_radiosShortDistance = ["ItemRadio"];
	OPEX_enemy_radiosLongDistance = ["ItemRadio"];
	OPEX_enemy_cacheCrates = ["Box_FIA_wps_F"];

	// UNIFORMS
	OPEX_enemy_commonUniforms = ["CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_07","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_03"];

	// VESTS
	OPEX_enemy_commonVests = ["CUP_V_OI_TKI_Jacket1_01","CUP_V_OI_TKI_Jacket1_05","CUP_V_OI_TKI_Jacket1_02","CUP_V_OI_TKI_Jacket1_03","CUP_V_OI_TKI_Jacket5_04","CUP_V_OI_TKI_Jacket5_05","CUP_V_OI_TKI_Jacket5_02","CUP_V_OI_TKI_Jacket5_06","CUP_V_OI_TKI_Jacket5_03","CUP_V_OI_TKI_Jacket5_01","CUP_V_OI_TKI_Jacket3_04","CUP_V_OI_TKI_Jacket3_02","CUP_V_OI_TKI_Jacket3_03","CUP_V_OI_TKI_Jacket3_05","CUP_V_OI_TKI_Jacket3_06","CUP_V_OI_TKI_Jacket3_01","CUP_V_OI_TKI_Jacket6_04","CUP_V_OI_TKI_Jacket6_05","CUP_V_OI_TKI_Jacket6_02","CUP_V_OI_TKI_Jacket6_06","CUP_V_OI_TKI_Jacket6_03","CUP_V_OI_TKI_Jacket6_01","CUP_V_OI_TKI_Jacket1_01","CUP_V_OI_TKI_Jacket1_05","CUP_V_OI_TKI_Jacket1_02","CUP_V_OI_TKI_Jacket1_03","CUP_V_OI_TKI_Jacket5_04","CUP_V_OI_TKI_Jacket5_05","CUP_V_OI_TKI_Jacket5_02","CUP_V_OI_TKI_Jacket5_06","CUP_V_OI_TKI_Jacket5_03","CUP_V_OI_TKI_Jacket5_01","CUP_V_OI_TKI_Jacket3_04","CUP_V_OI_TKI_Jacket3_02","CUP_V_OI_TKI_Jacket3_03","CUP_V_OI_TKI_Jacket3_05","CUP_V_OI_TKI_Jacket3_06","CUP_V_OI_TKI_Jacket3_01","CUP_V_OI_TKI_Jacket6_04","CUP_V_OI_TKI_Jacket6_05","CUP_V_OI_TKI_Jacket6_02","CUP_V_OI_TKI_Jacket6_06","CUP_V_OI_TKI_Jacket6_03","CUP_V_OI_TKI_Jacket6_01","CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket4_02","CUP_V_OI_TKI_Jacket4_06","CUP_V_OI_TKI_Jacket4_03","CUP_V_OI_TKI_Jacket4_01","CUP_V_OI_TKI_Jacket2_04","CUP_V_OI_TKI_Jacket2_06","CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket2_02","CUP_V_OI_TKI_Jacket2_05","CUP_V_OI_TKI_Jacket2_01"];
	OPEX_enemy_beltVests = ["CUP_V_B_ALICE","CUP_V_CDF_OfficerBelt2","CUP_V_CDF_OfficerBelt","CUP_V_CDF_CrewBelt","CUP_V_B_BAF_MTP_Osprey_Mk4_Belt","CUP_V_B_BAF_MTP_Osprey_Mk4_Webbing","CUP_V_O_TK_CrewBelt","CUP_V_O_TK_OfficerBelt2","CUP_V_O_TK_OfficerBelt"];
	OPEX_enemy_grenadierVests = ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket4_02","CUP_V_OI_TKI_Jacket4_06","CUP_V_OI_TKI_Jacket4_03","CUP_V_OI_TKI_Jacket4_01","CUP_V_OI_TKI_Jacket2_04","CUP_V_OI_TKI_Jacket2_06","CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket2_02","CUP_V_OI_TKI_Jacket2_05","CUP_V_OI_TKI_Jacket2_01"];

	// HEADGEAR
	OPEX_enemy_tankCrewHelmets = ["CUP_H_SLA_TankerHelmet","CUP_H_RUS_TSH_4_Brown"];
	OPEX_enemy_headgears = ["H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive","CUP_H_TK_Lungee","CUP_H_TKI_Lungee_Open_04","CUP_H_TKI_Lungee_Open_05","CUP_H_TKI_Lungee_Open_06","CUP_H_TKI_Lungee_01","CUP_H_TKI_Lungee_02","CUP_H_TKI_Lungee_03","CUP_H_TKI_Lungee_04","CUP_H_TKI_Lungee_05","CUP_H_TKI_Lungee_06","CUP_H_TKI_Pakol_1_01","CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Pakol_2_03","CUP_H_TKI_Pakol_2_05","CUP_H_TKI_Pakol_2_06","CUP_H_TKI_Pakol_1_02","CUP_H_TKI_Pakol_1_03","CUP_H_TKI_Pakol_1_04","CUP_H_TKI_Pakol_1_05","CUP_H_TKI_Pakol_1_06","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_Pakol_2_02","CUP_H_TKI_Pakol_2_03","CUP_H_TKI_SkullCap_01","CUP_H_TKI_SkullCap_02","CUP_H_TKI_SkullCap_03","CUP_H_TKI_SkullCap_04","CUP_H_TKI_SkullCap_05","CUP_H_TKI_SkullCap_06"];
	OPEX_enemy_officerHeadgears = ["CUP_H_TKI_Lungee_Open_01","CUP_H_TKI_Lungee_Open_02","CUP_H_TKI_Lungee_Open_03"];

	// FACEGEAR
	OPEX_enemy_balaclavas = ["G_Balaclava_blk"];
	OPEX_enemy_scarfs = ["G_Bandanna_tan","G_Bandanna_khk","G_Bandanna_blk","G_Bandanna_oli","CUP_G_Scarf_Face_Blk","CUP_G_Scarf_Face_Grn","CUP_G_Scarf_Face_Red","CUP_G_Scarf_Face_Tan","CUP_G_Scarf_Face_White","CUP_FR_NeckScarf3","CUP_FR_NeckScarf","CUP_FR_NeckScarf2","CUP_FR_NeckScarf5","CUP_FR_NeckScarf4"];
	OPEX_enemy_glasses = ["G_Spectacles","G_Squares"];
	OPEX_enemy_sunglasses = ["G_Squares_Tinted","G_Squares_Tinted","G_Squares_Tinted","G_Shades_Black","G_Shades_Green","G_Shades_Red","G_Shades_Blue","G_Lowprofile","G_Spectacles_Tinted","G_Aviator","G_Aviator","G_Bandanna_aviator","G_Bandanna_aviator","G_Bandanna_aviator"];

	// BACKPACKS
	OPEX_enemy_commonBackpacks = ["B_FieldPack_cbr","B_FieldPack_khk","B_FieldPack_oli","B_Kitbag_sgg","B_Kitbag_rgr","CUP_B_HikingPack_Civ","CUP_B_Kombat_Olive","CUP_B_SLA_Medicbag","CUP_B_RPGPack_Khaki","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD","CUP_B_AlicePack_Bedroll","CUP_B_CivPack_WDL","CUP_B_AssaultPack_Coyote","CUP_B_AssaultPack_Black","CUP_B_USMC_AssaultPack","CUP_B_ACRPara_m95","CUP_B_ACRScout_m95","CUP_B_USMC_MOLLE_WDL","CUP_B_USMC_MOLLE","CUP_B_USPack_Coyote","CUP_B_USPack_Black","CUP_B_RUS_Backpack"];