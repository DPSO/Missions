﻿////////////////////////////////////////////////////////////////////////////////
//                         onPlayerRespawn.sqf                                //
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// LOADING GEAR
////////////////////////////////////////////////////////////////////////////////

[player, [missionNamespace, "myLoadout"]] call BIS_fnc_loadInventory;

////////////////////////////////////////////////////////////////////////////////
// LOADING INSIGNIA
////////////////////////////////////////////////////////////////////////////////

sleep 0.1;

 // LOADING PRIMARY WEAPON (because the BIS_fnc_loadInventory function above doesn't always restore the primary weapon as it should)
if (primaryWeapon player == "") then
	{
		player removeWeapon (primaryWeapon player);
		private ["_primaryWeapon", "_primaryWeaponItems"];
		_primaryWeapon = missionNamespace getVariable ["myPrimaryWeapon", ""];
		_primaryWeaponItems = missionNamespace getVariable ["myPrimaryWeaponItems", ["","","",""]];
		if (_primaryWeapon != "") then {[player, _primaryWeapon, 1, 0] call BIS_fnc_addWeapon; player selectWeapon (primaryWeapon player)};
		if ((_primaryWeapon != "") && (_primaryWeaponItems isEqualTo ["","","",""])) then {{player addPrimaryWeaponItem _x} forEach _primaryWeaponItems};
	};
////////////////////////////////////////////////////////////////////////////////
// ADDING WHEEL ACTIONS
////////////////////////////////////////////////////////////////////////////////
player setVariable ["customActionsReady",false];

////////////////////////////////////////////////////////////////////////////////
// RESETTING PLAYER'S ANIMATION
////////////////////////////////////////////////////////////////////////////////
player playMove "";
player switchMove "";

////////////////////////////////////////////////////////////////////////////////
// MOVING A BIT THE PLAYER (TO AVOID HE SPAWNS ON THE TENT WHEN CHOOSING TO RESPAWN AT MOBILE COMPOUND)
////////////////////////////////////////////////////////////////////////////////
player setPos [(getPos player select 0) + random 2, (getPos player select 1) + random 2, (getPos player select 2)];

////////////////////////////////////////////////////////////////////////////////
// kill the rabbits 
////////////////////////////////////////////////////////////////////////////////

// Disable Ambient Animals
[{time > 0}, {enableEnvironment [false, true];}] call CBA_fnc_waitUntilAndExecute;

////////////////////////////////////////////////////////////////////////////////
// Shut the hell up  - Mute Orders and Reports					
////////////////////////////////////////////////////////////////////////////////

{_x setSpeaker "NoVoice"} forEach playableUnits;

enableSentences false;

