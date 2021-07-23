////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//                           DESCRIPTION.EXT                                  //
//              this file is executed on both server and clients              //
////////////////////////////////////////////////////////////////////////////////

waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
// nul=[] execVM "scripts\IntLight.sqf";
// execVM "PrykUav.sqf
//execVM "scripts\randomWeather.sqf";
if (isServer) then
{
myNewTime = random 24;
publicVariable "myNewTime";
};
waitUntil{not isNil "myNewTime"};
skipTime myNewTime;
