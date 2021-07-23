_veh = _this select 0;
_unit = _this select 1;
_alt = (getPos _veh select 2) - 3;
_dir = direction _veh;

{
unassignVehicle _x;
_x action ["EJECT", _veh];
_x setDir _dir + 90;
sleep 0.1;
[_x,_alt,true,true,true] call COB_fnc_HALO;
} foreach units group _unit;true] call COB_fnc_HALO;
