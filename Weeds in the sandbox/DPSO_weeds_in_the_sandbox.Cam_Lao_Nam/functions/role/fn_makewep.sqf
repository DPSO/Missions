if (isDedicated) exitwith {};

if (hasinterface) then {
    player setUnitTrait ["UAVHacker", false];
    player setUnitTrait ["engineer", false];
    player setUnitTrait ["explosiveSpecialist", false];
    player setUnitTrait ["Medic", false];
    
    player setUnitTrait ["audibleCoef", .25];
    player setUnitTrait ["camouflageCoef", .25];
    player setUnitTrait ["loadCoef", .25];
    
    player setUnitTrait ["vn_artillery", false, true];
    player setVariable ["RYD_HAS_cancall", false];
};

hintSilent format ["Weapons, %1!", name player];