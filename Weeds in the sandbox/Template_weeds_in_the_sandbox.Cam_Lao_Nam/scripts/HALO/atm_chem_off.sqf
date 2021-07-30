_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_ltcolor = (_this select 3) select 0;

_caller removeAction _id;



deletevehicle (_caller getvariable "lgtarray"); _caller setvariable ["lgtarray",nil,true];

_target = player;
RedOn = _target addAction["<t color='#B40404'>Chemlight Red On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_red"],6,false,false,"","_target == ( player)"];
BlueOn = _target addAction["<t color='#68ccf6'>Chemlight Blue On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_blue"],6,false,false,"","_target == ( player)"];
YellowOn = _target addAction["<t color='#fcf018'>Chemlight Yellow On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_yellow"],6,false,false,"","_target == ( player)"];
GreenOn = _target addAction["<t color='#30fd07'>Chemlight Green On</t>", "scripts\HALO\atm_chem_on.sqf",["Chemlight_green"],6,false,false,"","_target == ( player)"];
