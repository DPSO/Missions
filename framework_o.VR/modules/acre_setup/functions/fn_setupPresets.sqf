if (isDedicated) exitWith {};

if (hasInterface) then {
    ["ACRE_PRC148", "default", "ds990"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "bolo"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da991"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da992"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da993"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da994"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da995"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da996"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da997"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "da998"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC148", "default", "ds999"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC117F", "default", "dpso"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC152", "default", "dpso"] call acre_api_fnc_copyPreset;
    ["ACRE_PRC343", "default", "dpso"] call acre_api_fnc_copyPreset;
    //dps0
    ["ACRE_PRC117F", "dpso", 1, "label", "GRP-NET-MAIN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 1, "frequencyRX", 60.00] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 1, "frequencyTX", 60.00] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 2, "label", "GRP-NET-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 2, "frequencyRX", 60.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 2, "frequencyTX", 60.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 3, "label", "GRP-NET-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 3, "frequencyRX", 60.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 3, "frequencyTX", 60.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 4, "label", "GRP-NET-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 4, "frequencyRX", 60.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 4, "frequencyTX", 60.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 5, "label", "GRP-NET-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 5, "frequencyRX", 60.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 5, "frequencyTX", 60.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 6, "label", "GRP-NET-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 6, "frequencyRX", 60.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 6, "frequencyTX", 60.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 7, "label", "FIRES-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 7, "frequencyRX", 61.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 7, "frequencyTX", 61.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 8, "label", "AIR-01-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 8, "frequencyRX", 62.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 8, "frequencyTX", 62.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 9, "label", "AIR-02-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 9, "frequencyRX", 62.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 9, "frequencyTX", 62.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 10, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 10, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC117F", "dpso", 10, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;


    ["ACRE_PRC152", "dpso", 1, "label", "Net-991"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 1, "frequencyRX", 71] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 1, "frequencyTX", 71] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 2, "label", "Net-992"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 2, "frequencyRX", 72] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 2, "frequencyTX", 72] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 3, "label", "Net-993"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 3, "frequencyRX", 73] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 3, "frequencyTX", 73] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 4, "label", "Net-994"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 4, "frequencyRX", 74] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 4, "frequencyTX", 74] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 5, "label", "Net-995"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 5, "frequencyRX", 75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 5, "frequencyTX", 75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 6, "label", "Net-996"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 6, "frequencyRX", 76] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 6, "frequencyTX", 76] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 7, "label", "Net-997"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 7, "frequencyRX", 77] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 7, "frequencyTX", 77] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 8, "label", "Net-998"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 8, "frequencyRX", 78] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 8, "frequencyTX", 78] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 9, "label", "Net-999"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 9, "frequencyRX", 79] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 9, "frequencyTX", 79] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 10, "label", "Net-990"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 10, "frequencyRX", 70] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "dpso", 10, "frequencyTX", 70] call acre_api_fnc_setPresetChannelField;



    //990 and bolo
    ["ACRE_PRC152", "ds990", 1, "label", "NET-990-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 1, "frequencyRX", 31.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 1, "frequencyTX", 31.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 2, "label", "NET-990-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 2, "frequencyRX", 31.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 2, "frequencyTX", 31.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 3, "label", "NET-990-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 3, "frequencyRX", 31.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 3, "frequencyTX", 31.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 4, "label", "NET-990-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 4, "frequencyRX", 31.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 4, "frequencyTX", 31.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 5, "label", "NET-990-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 5, "frequencyRX", 31.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 5, "frequencyTX", 31.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds990", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;


    ["ACRE_PRC148", "bolo", 1, "label", "NET-990-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 1, "frequencyRX", 31.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 1, "frequencyTX", 31.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 2, "label", "NET-990-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 2, "frequencyRX", 31.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 2, "frequencyTX", 31.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 3, "label", "NET-990-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 3, "frequencyRX", 31.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 3, "frequencyTX", 31.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 4, "label", "NET-990-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 4, "frequencyRX", 31.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 4, "frequencyTX", 31.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 5, "label", "NET-990-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 5, "frequencyRX", 31.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 5, "frequencyTX", 31.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "bolo", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

    //991
    ["ACRE_PRC148", "da991", 1, "label", "NET-991-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 1, "frequencyRX", 31.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 1, "frequencyTX", 31.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 2, "label", "NET-991-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 2, "frequencyRX", 31.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 2, "frequencyTX", 31.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 3, "label", "NET-991-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 3, "frequencyRX", 31.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 3, "frequencyTX", 31.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 4, "label", "NET-991-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 4, "frequencyRX", 31.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 4, "frequencyTX", 31.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 5, "label", "NET-991-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 5, "frequencyRX", 31.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 5, "frequencyTX", 31.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da991", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

    //992
    ["ACRE_PRC148", "da992", 1, "label", "NET-992-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 1, "frequencyRX", 32.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 1, "frequencyTX", 32.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 2, "label", "NET-992-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 2, "frequencyRX", 32.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 2, "frequencyTX", 32.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 3, "label", "NET-992-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 3, "frequencyRX", 32.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 3, "frequencyTX", 32.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 4, "label", "NET-992-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 4, "frequencyRX", 32.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 4, "frequencyTX", 32.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 5, "label", "NET-992-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 5, "frequencyRX", 32.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 5, "frequencyTX", 32.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da992", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

    //993
    ["ACRE_PRC148", "da993", 1, "label", "NET-993-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 1, "frequencyRX", 33.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 1, "frequencyTX", 33.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 2, "label", "NET-993-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 2, "frequencyRX", 33.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 2, "frequencyTX", 33.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 3, "label", "NET-993-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 3, "frequencyRX", 33.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 3, "frequencyTX", 33.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 4, "label", "NET-993-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 4, "frequencyRX", 33.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 4, "frequencyTX", 33.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 5, "label", "NET-993-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 5, "frequencyRX", 33.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 5, "frequencyTX", 33.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da993", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

    //994
    ["ACRE_PRC148", "da994", 1, "label", "NET-994-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 1, "frequencyRX", 34.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 1, "frequencyTX", 34.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 2, "label", "NET-994-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 2, "frequencyRX", 34.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 2, "frequencyTX", 34.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 3, "label", "NET-994-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 3, "frequencyRX", 34.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 3, "frequencyTX", 34.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 4, "label", "NET-994-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 4, "frequencyRX", 34.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 4, "frequencyTX", 34.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 5, "label", "NET-994-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 5, "frequencyRX", 34.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 5, "frequencyTX", 34.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da994", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

    //995
    ["ACRE_PRC148", "da995", 1, "label", "NET-995-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 1, "frequencyRX", 35.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 1, "frequencyTX", 35.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 2, "label", "NET-995-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 2, "frequencyRX", 35.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 2, "frequencyTX", 35.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 3, "label", "NET-995-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 3, "frequencyRX", 35.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 3, "frequencyTX", 35.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 4, "label", "NET-995-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 4, "frequencyRX", 35.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 4, "frequencyTX", 35.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 5, "label", "NET-995-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 5, "frequencyRX", 35.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 5, "frequencyTX", 35.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da995", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

        //996
    ["ACRE_PRC148", "da996", 1, "label", "NET-996-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 1, "frequencyRX", 36.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 1, "frequencyTX", 36.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 2, "label", "NET-996-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 2, "frequencyRX", 36.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 2, "frequencyTX", 36.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 3, "label", "NET-996-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 3, "frequencyRX", 36.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 3, "frequencyTX", 36.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 4, "label", "NET-996-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 4, "frequencyRX", 36.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 4, "frequencyTX", 36.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 5, "label", "NET-996-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 5, "frequencyRX", 36.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 5, "frequencyTX", 36.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da996", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

        //997
    ["ACRE_PRC148", "da997", 1, "label", "NET-997-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 1, "frequencyRX", 37.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 1, "frequencyTX", 37.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 2, "label", "NET-997-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 2, "frequencyRX", 37.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 2, "frequencyTX", 37.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 3, "label", "NET-997-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 3, "frequencyRX", 37.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 3, "frequencyTX", 37.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 4, "label", "NET-997-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 4, "frequencyRX", 37.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 4, "frequencyTX", 37.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 5, "label", "NET-997-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 5, "frequencyRX", 37.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 5, "frequencyTX", 37.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da997", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;


    //998
    ["ACRE_PRC148", "da998", 1, "label", "NET-998-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 1, "frequencyRX", 38.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 1, "frequencyTX", 38.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 2, "label", "NET-998-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 2, "frequencyRX", 38.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 2, "frequencyTX", 38.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 3, "label", "NET-998-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 3, "frequencyRX", 38.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 3, "frequencyTX", 38.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 4, "label", "NET-998-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 4, "frequencyRX", 38.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 4, "frequencyTX", 38.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 5, "label", "NET-998-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 5, "frequencyRX", 38.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 5, "frequencyTX", 38.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC148", "da998", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;

    //999
    ["ACRE_PRC152", "ds999", 1, "label", "NET-999-WHT"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 1, "frequencyRX", 39.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 1, "frequencyTX", 39.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 1, "Power", 3000] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 2, "label", "NET-999-RED"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 2, "frequencyRX", 39.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 2, "frequencyTX", 39.375] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 2, "Power", 3000] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 3, "label", "NET-999-GRN"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 3, "frequencyRX", 39.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 3, "frequencyTX", 39.5] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 3, "Power", 3000] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 4, "label", "NET-999-BLU"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 4, "frequencyRX", 39.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 4, "frequencyTX", 39.625] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 4, "Power", 3000] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 5, "label", "NET-999-YEL"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 5, "frequencyRX", 39.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 5, "frequencyTX", 39.75] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 5, "Power", 3000] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 6, "label", "AIR-REQ-NET"] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 6, "frequencyRX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 6, "frequencyTX", 40.25] call acre_api_fnc_setPresetChannelField;
    ["ACRE_PRC152", "ds999", 6, "Power", 3000] call acre_api_fnc_setPresetChannelField;

};

