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

_target = player;
RedOn = _target addAction["<t color='#B40404'>Chemlight Red On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_red"],6,false,false,"","_target == ( player)"];
BlueOn = _target addAction["<t color='#68ccf6'>Chemlight Blue On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_blue"],6,false,false,"","_target == ( player)"];
YellowOn = _target addAction["<t color='#fcf018'>Chemlight Yellow On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_yellow"],6,false,false,"","_target == ( player)"];
GreenOn = _target addAction["<t color='#30fd07'>Chemlight Green On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_green"],6,false,false,"","_target == ( player)"];
