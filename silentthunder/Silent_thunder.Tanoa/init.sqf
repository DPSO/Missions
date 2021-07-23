////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//                           DESCRIPTION.EXT                                  //
//              this file is executed on both server and clients              //
////////////////////////////////////////////////////////////////////////////////
enableEnvironment [hasInterface, hasInterface];

////////////////////////////////////////////////////////////////////////////////
// radom start time																														//
////////////////////////////////////////////////////////////////////////////////
if (isServer) then
{
myNewTime = random 24;
publicVariable "myNewTime";
};
waitUntil{not isNil "myNewTime"};
skipTime myNewTime;

setTimeMultiplier 6;

////////////////////////////////////////////////////////////////////////////////
// Dive MAte     																															//
////////////////////////////////////////////////////////////////////////////////
getGasTot = compile preprocessFileLineNumbers "trindisplay\functions\trin_fn_gasCalc.sqf";
getTisTot = compile preprocessFileLineNumbers "trindisplay\functions\trin_fn_initTissues.sqf";

////////////////////////////////////////////////////////////////////////////////
// VCOM AI 																																		//
// https://github.com/genesis92x/VcomAI-3.0      			  											//
////////////////////////////////////////////////////////////////////////////////

//Exec Vcom AI function
_vcom = [] execVM "Vcom\VcomInit.sqf";
waitUntil {scriptDone _vcom};

// //Globally disable VCOM_AI for Air units including Combat Support and Logistics.
[
 {
   {
     If (!isNull (driver _x) ) then {
       {
         if !(_x getVariable ["NOAI",false]) then
         {
           _x setVariable ["NOAI", true, false];
         };
       } foreach (units group (driver _x));
     };
   } Foreach (vehicles select {_x isKindOf "Helicopter"});
 },
 10,
 []
] call CBA_fnc_addPerFrameHandler;

////////////////////////////////////////////////////////////////////////////////
// UAV Marker Script 																													//
// http://www.armaholic.com/page.php?id=24026 																//
////////////////////////////////////////////////////////////////////////////////

// execVM "scripts\PrykUav.sqf";
// compile preprocessFileLineNumbers "scripts\PrykUav.sqf";
/*
Script can be added to any vehicle or unit by putting the following syntax in its init line:
_null = this spawn {While {isNil "PrykUavInit"} do {sleep 2};  _this spawn PrykUavInit;}
*/

////////////////////////////////////////////////////////////////////////////////
//   ADV towing																																//
////////////////////////////////////////////////////////////////////////////////
SA_MAX_TOWED_CARGO = 3;
SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [ "Car", "Ship" ];
SA_TOW_SUPPORTED_VEHICLES_OVERRIDE = [ "Air", "Ship" ];

////////////////////////////////////////////////////////////////////////////////
//   brief																																		//
////////////////////////////////////////////////////////////////////////////////

// _brief1 =[] execVM "brief\briefing.sqf";
// waitUntil {scriptDone _brief1};
//
// _brief2 =[] execVM "brief\howtoo.sqf";
// waitUntil {scriptDone _brief2};

////////////////////////////////////////////////////////////////////////////////
// Alive        																															//
////////////////////////////////////////////////////////////////////////////////
_alivetask =[] execVM "staticData.sqf";
waitUntil {scriptDone _alivetask};

waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
waitUntil {!isNil "ALIVE_profileSystemInit"};
waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
