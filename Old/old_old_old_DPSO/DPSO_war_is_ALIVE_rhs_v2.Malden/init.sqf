execVM "Scripts\PrykUav.sqf";
[{{Driver _x setvariable ["NOAI",true];} foreach (vehicles select {_x isKindOf 'air'});}, 1, []] call CBA_fnc_addPerFrameHandler;
[] execVM "VCOM_Driving\init.sqf";
