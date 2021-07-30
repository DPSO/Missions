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

private _RANKS_CAPTAIN = ["76561198412358897", "76561198028995919"];
private _RANKS_COLONEL = [];
private _RANKS_CORPORAL = ["76561198059703779", "76561198314980112", "76561198139809145", "76561198317296929", "76561198161159515", "76561198002245906", "76561198118045077", "76561198221746940", "76561197979314380"];
private _RANKS_SERGEANT = ["76561197983622925", "76561198126006606", "76561198027195894", "76561198137829399"];
private _RANKS_LIEUTENANT = ["76561198092031720", "76561198412358897"];
private _RANKS_MAJOR = ["76561198049209102", "76561198000002705", "76561198002438570", "76561198354925237"];

if (hasinterface) then {
    _playerUID = getplayerUID player;
    
    switch (true) do {
        case (_playerUID in _RANKS_CORPORAL) : {
            player setRank "CORPORAL";
        };
        case (_playerUID in _RANKS_SERGEANT) : {
            player setRank "SERGEANT";
        };
        case (_playerUID in _RANKS_LIEUTENANT) : {
            player setRank "LIEUTENANT";
        };
        case (_playerUID in _RANKS_CAPTAIN) : {
            player setRank "CAPTAIN";
        };
        case (_playerUID in _RANKS_MAJOR) : {
            player setRank "MAJOR";
        };
        case (_playerUID in _RANKS_COLONEL) : {
            player setRank "COLONEL";
        };
        default {
            player setRank "PRIVATE";
        };
    };
};
