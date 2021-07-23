// this file is executed on both server and clients
//execVM "scripts\randomWeather.sqf";
nul=[] execVM "scripts\IntLight.sqf";
execVM "PrykUav.sqf
//execVM "randomWeather2.sqf";
waituntil {(player getvariable ["alive_sys_player_playerloaded",false])};
