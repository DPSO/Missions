if (isDedicated) exitwith {};

if (hasinterface) then {
    player setUnitTrait ["UAVHacker", true];
    player setUnitTrait ["engineer", false];
    player setUnitTrait ["explosiveSpecialist", false];
    player setUnitTrait ["Medic", false];
    
    player setUnitTrait ["audibleCoef", .5];
    player setUnitTrait ["camouflageCoef", .5];
    player setUnitTrait ["loadCoef", .5];
    
    player setUnitTrait ["vn_artillery", true, true];
    player setVariable ["RYD_HAS_cancall", true];
    player setVariable ["RYD_HAS_canCall_Taxi",true,true];
    player setVariable ["RYD_HAS_canCall_CAS",true,true];

    [player] call RYD_HAS_NewUnits;
};

hintSilent format ["Communications, %1!", name player];
