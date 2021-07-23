/*
* File: init.sqf
* Project: v.Cam_Lao_Nam
* File Created: Tuesday, 6th July 2021 7:29:18 pm
* Author: YonV (yonv@gmail.com)
* -----
* Last modified: Wednesday, 7th July 2021 6:06:29 pm
* modified By: YonV (yonv@gmail.com>)
*/

/****************************************************
* THIS FILE IS execUTED ON BOTH SERVER and CLIENTS *
****************************************************/

#include "script_component.hpp"

/* ----------------------------- inITIALIZATION ----------------------------- */

enableSaving [false, false];

/* -------------------------------------------------------------------------- */
/* inITIALIZinG MISSION */
/* -------------------------------------------------------------------------- */

/* --------------------------------- Engima --------------------------------- */
// Added by Engima.civilians
call compile preprocessFileLineNumbers "scripts\Engima\civilians\init.sqf";

// Added by Engima.Traffic
call compile preprocessFileLineNumbers "scripts\Engima\Traffic\init.sqf";

/* ------------------ weather radom it is, hates us it does ------------------ */
// Dynamic weather (start clear)
execVM "Scripts\DynamicWeatherEffects\DynamicWeatherEffects.sqf";

/* ---------------------------- random start time --------------------------- */
/* if (isServer) then {
    myNewtime = random 24;
    publicVariable "myNewtime";
};
waitUntil{
    not isnil "myNewtime"
};
skiptime myNewtime;
 */
/* --------------- Shut the hell up - Mute orders and Reports -------------- */
{
    _x setspeaker "NoVoice"
} forEach playableunits;

enableSentences false;

/* ---------------------------------- AFAR ---------------------------------- */
[]spawn compileFinal(preprocessFile"scripts\AFAR\init.sqf");


/* ----------------------------------- HAS ---------------------------------- */
if (isServer) then {
    call compile preprocessFile "scripts\HAS\userConfig.sqf";
    call compile preprocessFile "scripts\HAS\HAS_fnc.sqf";
    [] call RYD_HAS_init;
};


/* ---------------------------------- ranks --------------------------------- */
call compile preprocessFileLineNumbers "functions\fn_rank.sqf";

/* ----------------------------------- TCL ---------------------------------- */
/* TCL_Path = "scripts\TCL_System\";
call compile preprocessFileLineNumbers (TCL_Path+"TCL_Preprocess.sqf"); */