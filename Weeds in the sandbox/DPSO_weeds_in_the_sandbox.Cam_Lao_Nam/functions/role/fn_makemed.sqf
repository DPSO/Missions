if (isDedicated) exitwith {};

if (hasinterface) then {
    player setUnitTrait ["UAVHacker", false];
    player setUnitTrait ["engineer", false];
    player setUnitTrait ["explosiveSpecialist", false];
    player setUnitTrait ["Medic", true];
    
    player setUnitTrait ["audibleCoef", .5];
    player setUnitTrait ["camouflageCoef", .5];
    player setUnitTrait ["loadCoef", .5];
    
    player setUnitTrait ["vn_artillery", false, true];
    player setVariable ["RYD_HAS_cancall", false];
};

hintSilent format ["Medic, %1!", name player];

