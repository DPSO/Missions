nul=[] execVM "Scripts\IntLight.sqf";
execVM "Scripts\PrykUav.sqf";
[] execVM "VCOMAI\init.sqf";
[{{Driver _x setvariable ["NOAI",true];} foreach (vehicles select {_x isKindOf 'air'});}, 1, []] call CBA_fnc_addPerFrameHandler;
