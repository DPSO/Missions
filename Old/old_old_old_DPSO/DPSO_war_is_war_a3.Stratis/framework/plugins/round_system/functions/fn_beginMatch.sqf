
#include "includes\settings.sqf"

// =============================================================================
// CODE TO BE EXECUTED DURING INIT
// =============================================================================

if (isServer) then {
// =============================================================================
// SERVER CODE
// =============================================================================

    [] call BRM_Round_System_fnc_setMatchVariables;

// =============================================================================
};

if (hasInterface) then {
// =============================================================================
// PLAYER CODE
// =============================================================================



// =============================================================================
};

0 spawn {
    sleep 0.1;
// =============================================================================
// CODE TO BE EXECUTED IN-GAME:
// =============================================================================

    sleep 3;

    ["Timer",[format ["The match begins in %1 seconds!", round_prep_time_seconds]]] call BIS_fnc_showNotification;

    sleep round_prep_time_seconds;

    if (isServer) then {
    // =========================================================================
    // SERVER CODE
    // =========================================================================

        [] call BRM_Round_System_fnc_roundStart;

    // =========================================================================
    };

    if (hasInterface) then {
    // =========================================================================
    // PLAYER CODE
    // =========================================================================

        [] call BRM_Round_System_fnc_roundStartPlayer;

    // =========================================================================
    };
};