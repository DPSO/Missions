////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//                           initPlayerLocal.sqf                              //
//                     this file is executed on clients                       //
////////////////////////////////////////////////////////////////////////////////
//waituntil {!isnull cameraon && getClientState != "MISSION RECEIVED" && getClientState != "GAME LOADED"};
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};
////////////////////////////////////////////////////////////////////////////////
// splash screen                          							   		//
////////////////////////////////////////////////////////////////////////////////

//["images\splash2.paa", 5] call MRH_fnc_SplashScreen;

////////////////////////////////////////////////////////////////////////////////
// kill the rabbits 													//
////////////////////////////////////////////////////////////////////////////////

enableEnvironment [false, true];

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports						 //
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;




