/*
 * File: CfgCloudlets.hpp
 * Project: V_weeds_in_the_sandbox.Cam_Lao_Nam
 * File Created: Sunday, 11th July 2021 8:50:14 pm
 * Author: YonV (yonv@gmail.com)
 * -----
 * Last Modified: Monday, 12th July 2021 3:41:07 am
 * Modified By: YonV (yonv@gmail.com>)
 */


class CfgCloudlets {
    class Default;

    class SmokeShellWhite: Default {
        interval = 0.05; // 0.03
        size[] = {0.5, 5, 16}; // {0.1, 2, 6}
        moveVelocity[] = {0.2, 0.3, 0.2}; // {0.2, 0.1, 0.1}
        moveVelocityVar[] = {0.6, 0.3, 0.6}; // {0.25, 0.25, 0.25}
        lifeTime = 20; // 20
    };

    class ObjectDestructionSmoke: Default {
        interval = 0.25; // 0.18
    };
    class ObjectDestructionSmoke1_2: Default {
        interval = 0.29; // 0.22
    };
    class ObjectDestructionSmokeSmall: Default {
        interval = 0.19; // 0.12
    };
    class ObjectDestructionSmokeSmallx: Default {
        interval = 0.19; // 0.12
    };
    class ObjectDestructionSmoke1_2Small: Default {
        interval = 0.24; // 0.16
    };
    class ObjectDestructionSmoke1_2Smallx: Default {
        interval = 0.25; // 0.16
    };
    class ObjectDestructionSmoke2: Default {
        interval = 0.1; // 0.04
    };
};
