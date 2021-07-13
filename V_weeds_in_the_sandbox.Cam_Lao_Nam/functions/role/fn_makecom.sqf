if (isDedicated) exitWith {};

if (hasInterface) then {
    player setUnitTrait ["UAVHacker", true];
    player setUnitTrait ["engineer", false];
    player setUnitTrait ["explosiveSpecialist", false];
    player setUnitTrait ["Medic", false];

    player setUnitTrait ["audibleCoef", .5];
    player setUnitTrait ["camouflageCoef", .5];
    player setUnitTrait ["loadCoef", .5];

    player setUnitTrait ["vn_artillery", true,true];

    player setVariable ["RYD_HAS_canCall",true];
    
    BIS_supp_refresh = TRUE;
    publicVariable "BIS_supp_refresh";
 
};


hintSilent format ["Communications, %1!", name player];


/* 
Number audibleCoef - A lower value means the unit is harder to hear
Number camouflageCoef - A lower value means the unit is harder to spot
Number loadCoef - Equipment weight multiplier affecting fatigue and stamina
Boolean engineer - Ability to partially repair vehicles with toolkit, equivalent to engineer = 1; in CfgVehicles
Boolean explosiveSpecialist - Ability to defuse mines with toolkit, equivalent to canDeactivateMines = 1; in CfgVehicles
Boolean medic - Ability to treat self and others with medikit, equivalent to attendant = 1; in CfgVehicles
Boolean UAVHacker - Ability to hack drones, equivalent to uavHacker = 1; in CfgVehicles 


player setUnitTrait ["Medic", true];
*/