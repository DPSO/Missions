if (isDedicated) exitwith {};

if (hasinterface) then {
    player setUnitTrait ["UAVHacker", false];
    player setUnitTrait ["engineer", true];
    player setUnitTrait ["explosiveSpecialist", true];
    player setUnitTrait ["Medic", false];
    
    player setUnitTrait ["audibleCoef", .5];
    player setUnitTrait ["camouflageCoef", .5];
    player setUnitTrait ["loadCoef", .5];
    
    player setUnitTrait ["vn_artillery", false, true];
    player setVariable ["RYD_HAS_cancall", false];
};

hintSilent format ["Engineer, %1!", name player];
