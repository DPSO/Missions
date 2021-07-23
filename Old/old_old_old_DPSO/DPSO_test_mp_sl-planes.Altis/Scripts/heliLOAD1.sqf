_unit = _this select 1;
_veh = heli_1;

_veh hideObject false;
{
_x assignAsCargo _veh;
_x moveInCargo _veh;
} foreach units group _unit;
