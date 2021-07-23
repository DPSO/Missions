class adv
{
	tag = "adv";
	class init
	{
		class initOrganizer { preInit = 1; };
		class init {};
		class initPlayerLocal {};
		class initServer {};
	};
	class userSettings
	{
		class acreSettings { file = "mission\config\fn_acreSettings.sqf"; };
		//class radioGroups { file = "mission\config\fn_radioGroups.sqf"; };
		class tfarSettings { file = "mission\config\fn_tfarSettings.sqf"; };
		//class userMarkers { file = "mission\config\fn_userMarkers.sqf"; };
		//class userVariables { file = "mission\config\fn_userVariables.sqf"; };
	};
	class preInit
	{
		class aceParams { postInit = 1; };
		class collectCrates {};
		class collectFlags {};
		//class parVariables {};
		/* class variables {};
		class missionMarkers {};
		class sideMarkers {}; */
		class fhqTT
		{
			file = "scripts\fhqtt2.sqf";
			preInit = 1;
		};

	};
	class postInit {
		class postInitVariables { postInit = 1; };
	};
	class shared
	{
		class jammer {};
		class mortarFlare {};
		class radioRelay {};
		//class radioRelay_new {};
		class weather {};
	};
	class server_internal
	{
		file = "functions\server\internal";
		//class addACEItems {};
		//class addVehicleLoad {};
		//class changeVeh {};
		class createAresLogic {};
		//class disableVehSelector {};
		class enableInfoComponent {};
		//class manageVeh {};
		class nil {};
		class rhsDecals {};
		//class zeusEVH {};
	};
	class server
	{
		class armedHuron {};
		class board {};
		class clearFreedom {};
		class getBaseClass {};
		class getClassNames {};
		class getGroupVehicles {};
		class getList {};
		class getOppPos {};
		class getPos {};
		class HCobjects {};
		class IEDhandler {};
		class lockVeh {};
		class retexture {};
	};
	class client_internal
	{
		file = "functions\client\internal";
		class dialogTeleport {};
		class execTeleport {};
		class moveRespMarker {};
		class privateDebug {};
	};
	class client
	{
		class aceMine {};
		class disableInput {};
		class dispLaunch {};
		class enableChannels {};
		class findInGroup {};
		class flag {};
		class fullHeal {};
		class inGroup {};
		class jamChance {};
		class paraJump {};
		class paraJumpSelection {};
		class playerUnit {};
		class showArtiSetting {};
		class siren {};
		class spawnFire {};
		class speedLimiter {};
		class teleport {};
		class timedHint {};
		class undercover {};
		class vtolAction {};
	};

};
class MtB
{
	tag = "MtB";
	class randomWeather
	{
		class randomWeather {file = "scripts\randomWeather.sqf";};
	};
};
class SA
{
	tag = "SA";
	class advancedTowing
	{
		class advancedTowingInit {file = "scripts\fn_advancedTowingInit.sqf"; postInit = 1;};
	};
};
