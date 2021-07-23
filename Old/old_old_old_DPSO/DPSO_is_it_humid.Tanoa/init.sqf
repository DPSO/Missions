// ====================================================================================

// F3 - Common Local Variables
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// WARNING: DO NOT DISABLE THIS COMPONENT
if(isServer) then {
	f_script_setLocalVars = [] execVM "Scripts\common\f_setLocalVars.sqf";
};

// ====================================================================================
// Drone intel script
execVM "Scripts\PrykUav.sqf";

// ============================================================================================

// internial lights script
nul=[] execVM "Scripts\IntLight.sqf";

// ============================================================================================

//  radio script
[] execVM "Scripts\radios\tfr\tfr_init.sqf";

// ============================================================================================
