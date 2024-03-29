////////////////////////////////////////////////////////////////////////////////
//                           init.sqf                                         //
//              this file is executed on both server and clients              //
////////////////////////////////////////////////////////////////////////////////
#include "script_component.hpp"

////////////////////////////////////////////////////////////////////////////////
// DPSO INITIALIZATION
////////////////////////////////////////////////////////////////////////////////
enableRadio false;
Server = missionNamespace;
waitUntil {!isNil "BIS_fnc_init"}; // waiting for BI's functions
enableSaving [false, false];

////////////////////////////////////////////////////////////////////////////////
// SETTING DEV VARIABLES
////////////////////////////////////////////////////////////////////////////////

DPSO_version = "1.00";
DPSO_debug = false; // [bool] true (if yes) or false (if no) - default: false
DPSO_updateNotice = [false, parseNumber DPSO_version]; // [bool, number] true if a notice must be displayed once a new update is released

////////////////////////////////////////////////////////////////////////////////
// INITIALIZING MISSION
////////////////////////////////////////////////////////////////////////////////
// DUDA
execVM "scripts\duda\fn_advancedTowingInit.sqf"; // towing script
execVM "scripts\duda\fn_advancedSlingLoadingInit.sqf"; // towing script

// BANGABOB
null = allUnits execVM "scripts\BangaBob\dragDeadBody\H8_dragBody.sqf"; // DRAG DEAD BODY SCRIPT

////////////////////////////////////////////////////////////////////////////////
// Disable Ambient Animals
////////////////////////////////////////////////////////////////////////////////

[{time > 0}, {enableEnvironment [false, false];}] call CBA_fnc_waitUntilAndExecute;

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

////////////////////////////////////////////////////////////////////////////////
// Alive        																							
////////////////////////////////////////////////////////////////////////////////

/* 
_alivetask =[] execVM "staticData.sqf";
waitUntil {scriptDone _alivetask};

waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
waitUntil {!isNil "ALIVE_profileSystemInit"};
waituntil {(player getvariable ["alive_sys_player_playerloaded",false])}; 
*/

////////////////////////////////////////////////////////////////////////////////
// zbe Cache        																							
////////////////////////////////////////////////////////////////////////////////
//[AiCacheDistance(players),TargetFPS(-1 for Auto),Debug,CarCacheDistance,AirCacheDistance,BoatCacheDistance]execvm "zbe_cache\main.sqf";

if (isServer) then {[2000,-1,DPSO_debug,2000,2000,2000]execvm "scripts\zbe_cache\main.sqf"};

////////////////////////////////////////////////////////////////////////////////
// Snow Storm
////////////////////////////////////////////////////////////////////////////////
if (hasInterface) then {
    #include "Snow\fn_init.sqf"
};
waitUntil {time > 0};
enableEnvironment false;



/* 
[] execVM "briefing.sqf";
//"_snowfall","_duration_storm","_ambient_sounds_al","_breath_vapors","_snow_burst","_effect_on_objects","_vanilla_fog","_local_fog","_intensifywind","_unitsneeze"
[true,           18000,                15,                    true,           10,             false, 			true,         true,        false,          true] execvm "AL_snowstorm\al_snow.sqf"; 
*/