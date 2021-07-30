params ["_synced"];
MisHALO = compileFinal preprocessFileLineNumbers "scripts\HALO\atm_airdrop.sqf";
{
	_x addAction ["<t color=""#ff9900"">" + ("- - HALO - -")     + "</t>", {[] call MisHALO;}   ,"",0.03,false,false];
}foreach _synced;