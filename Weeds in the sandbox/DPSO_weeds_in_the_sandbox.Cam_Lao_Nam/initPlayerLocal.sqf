/*
 * File: initPlayerLocal.sqf
 * Project: v.Cam_Lao_Nam
 * File Created: Tuesday, 6th July 2021 7:29:18 pm
 * Author: YonV (yonv@gmail.com)
 * -----
 * Last Modified: Wednesday, 7th July 2021 5:59:23 pm
 * Modified By: YonV (yonv@gmail.com>)
 */

/************************************
 * THIS FILE IS EXECUTED ON CLIENTS *
 ************************************/
#include "script_component.hpp"

/* --------------------------- INITIALIZING PLAYER -------------------------- */
waitUntil { !isNull player };

0 fadeRadio 0;
enableRadio false;
enableSentences false;

/* ---------------------- INITIALIZING PLAYER'S STANCE ---------------------- */
player setVariable ["isSitting", false, true];
player switchMove "";


/* --------------------------- INITIALIZING PLAYER -------------------------- */

/* --------------- Shut the hell up  - Mute Orders and Reports -------------- */
{_x setSpeaker "NoVoice"} forEach allUnits;

/* ------------------------------ Survice crash ----------------------------- */
[] execVM "scripts\r0ed_SurvivableCrashes\initPlayerLocal.sqf";

