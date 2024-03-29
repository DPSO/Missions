class CfgFunctions {
    #include "scripts\CBA3\hpp_functions.hpp"

    class ADDON {
        tag = QUOTE(ADDON);
        class functions {
            file = "functions";
            // class addChatCommands;
            // class environmentControl;
            // class fastTravel;
            class featureOverview;
            class initArsenalCrate;
            class vehicleSpawnerair;
            class vehicleSpawnerland;
            class vehicleSpawnersea;
            class Patches;
            class AddCueCards {};
            class timemarkers {postInit = 1;};
        };
    };
    class DOUBLES(ADDON,Medical) {
        class functions {
            file = "functions\medical";
            class init;
            class createSubject;
            class removeSubject;
            class checkSubject;
            class specific_bodyPartActions;
            class specific_projectileTypeActions;
            class specific_severityActions;
            class applyRandomDamage;
            class MedicalSupplies;
            class arsenal{postInit = 1;};
        };
    };
    class DOUBLES(ADDON,acre) {
        class functions {
            file = "functions\acre";
            // class clientInit;
            // class setupPresets{preInit = 1;};
           // class arsenal{postInit = 1;};
        };
    };
    class DOUBLES(ADDON,player) {
        class functions {
            file = "functions";
            class ConfigPlayer;
        };
    };
    class SAF {
        #define SAF_FNCS
            #include "scripts\sushi_scripts\core\init.cpp"
            #include "scripts\sushi_scripts\breach\init.cpp"
        #undef SAF_FNCS
    };

    #include "scripts\furniture\func.hpp"
};

/* 
preInit = 1;		// (formerly known as "forced") 1 to call the function upon mission start, before objects are initialized. Passed arguments are ["preInit"]
postInit = 1;		// 1 to call the function upon mission start, after objects are initialized. Passed arguments are ["postInit", didJIP]
preStart = 1;		// 1 to call the function upon game start, before title screen, but after all addons are loaded (config.cpp only)
*/