#include "..\script_component.hpp"
/*
*File: rank.sqf
*Project: V_weeds_in_the_sandbox.Cam_Lao_Nam
*File Created: Sunday, 11th July 2021 8:37:55 pm
*Author: YonV (yonv@gmail.com)
*-----
*Last modified: Sunday, 11th July 2021 8:38:09 pm
*modified By: YonV (yonv@gmail.com>)
*/

if (isDedicated) exitwith {};

if (hasinterface) then {
    _playerUID = getplayerUID player;
    
    switch (true) do {
        case (_playerUID in ranks_CorPorAL) : {
            player setRank "CorPorAL";
        };
        case (_playerUID in ranks_SERGEANT) : {
            player setRank "SERGEANT";
        };
        case (_playerUID in ranks_LIEUTENANT) : {
            player setRank "LIEUTENANT";
        };
        case (_playerUID in ranks_CAPTAin) : {
            player setRank "CAPTAin";
        };
        case (_playerUID in ranks_MAJor) : {
            player setRank "MAJor";
        };
        case (_playerUID in ranks_COLONEL) : {
            player setRank "COLONEL";
        };
        default {
            player setRank "private";
        };
    };
};
