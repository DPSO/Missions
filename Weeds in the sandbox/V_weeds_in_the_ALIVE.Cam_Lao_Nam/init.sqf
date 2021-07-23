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


/* ---------------------------- random start time --------------------------- */
if (isServer) then {
    myNewtime = random 24;
    publicVariable "myNewtime";
};
waitUntil{
    not isnil "myNewtime"
};
skiptime myNewtime;

/* --------------- Shut the hell up - Mute orders and Reports -------------- */
{
    _x setspeaker "NoVoice"
} forEach playableunits;

enableSentences false;
