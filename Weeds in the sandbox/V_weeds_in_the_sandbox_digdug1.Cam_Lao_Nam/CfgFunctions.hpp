/*
 * File: CfgFunctions.hpp
 * Project: v.Cam_Lao_Nam
 * File Created: Tuesday, 6th July 2021 8:58:31 pm
 * Author: YonV (yonv@gmail.com)
 * -----
 * Last Modified: Wednesday, 7th July 2021 6:08:49 pm
 * Modified By: YonV (yonv@gmail.com>)
 */



class CfgFunctions
{
	#include "scripts\taw_vd\CfgFunctions.hpp"
	#include "scripts\r0ed_SurvivableCrashes\CfgFunctions.hpp"
	class DPSO{

		tag = "DPSO";
		class Role {

			file = "functions\role";
            class makecom {};
            class makeeng {};
            class makewep {};
            class makemed {};

		};
		class Rank {

			file = "functions";
			class rank {postInit = 1;};
		};
	};
};
