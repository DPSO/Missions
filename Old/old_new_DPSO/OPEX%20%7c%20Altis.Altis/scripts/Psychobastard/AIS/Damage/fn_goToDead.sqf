﻿/*
 * Author: Psycho

 * Set the unit to the real dead. (overall damage == 1)

 * Arguments:
	0: Unit (Object)

 * Return value:
	-
 */

if (isClass (configFile >> "CfgPatches" >> "ace_medical")) exitWith {};

params ["_unit"];

if (!alive _unit) exitWith {};
if (_unit getVariable ["AIS_UnitIsDead", false]) exitWith {};

_unit setVariable ["AIS_UnitIsDead", true];

// unit is dragged. So the dragger have to call the release function.
if (!(isNull (_unit getVariable ["ais_DragDrop_Player", objNull]))) then {
	_dragger = _unit getVariable ["ais_DragDrop_Player", objNull];
	[_unit] remoteExecCall ["AIS_System_fnc_release", _dragger, false];
};

_unit call AIS_System_fnc_restoreFaks;

// dead... if some issues with the deadcam (shown killer) give the dead a deleay of 1 frame --> need testing
_unit setDamage 1;


true