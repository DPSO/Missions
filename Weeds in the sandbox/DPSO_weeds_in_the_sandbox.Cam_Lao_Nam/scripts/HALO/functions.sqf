///////////////////////////////////////////////////////////
//                =ATM= Airdrop       	 				    //
//         		 =ATM=Pokertour        		       		    //
//				version : 6.5						        //
//				date : 28/12/2015						   //
//                   visit us : atmarma.fr                 //
/////////////////////////////////////////////////////////

fnc_alt_onsliderchange =
{
	private["_dialog","_text","_value"];
	disableSerialization;

	_dialog = findDisplay 3900;
	_text = _dialog displayCtrl 3902;
	_value = _this select 0;

	Altitude = round(_value);
	_text ctrlSetText format["%1", round(_value)];
};


_KeyNotSel = false;				// Spyke
pkChangeKey = {
		_KeyNotSel = false;		// Spyke
		_index = lbCurSel 3903;
		switch _index do {
			case 0 : {
				_KeyNotSel = true;	// Spyke
			};
			case 1 : {
				ATM_Keys = 30; //A
			};
			case 2 : {
				ATM_Keys = 48; //B
			};
			case 3 : {
				ATM_Keys = 46; //C
			};
			case 4 : {
				ATM_Keys = 32; //D
			};
			case 5 : {
				ATM_Keys = 18; //E
			};
			case 6 : {
				ATM_Keys = 33; //F
			};
			case 7 : {
				ATM_Keys = 34; //G
			};
			case 8 : {
				ATM_Keys = 35; //H
			};
			case 9 : {
				ATM_Keys = 23; //I
			};
			case 10 : {
				ATM_Keys = 36; //J
			};
			case 11 : {
				ATM_Keys = 37; //K
			};
			case 12 : {
				ATM_Keys = 38; //L
			};
			case 13 : {
				ATM_Keys = 50; //M
			};
			case 14 : {
				ATM_Keys = 49; //N
			};
			case 15 : {
				ATM_Keys = 24; //O
			};
			case 16 : {
				ATM_Keys = 25; //P
			};
			case 17 : {
				ATM_Keys = 16; //Q
			};
			case 18 : {
				ATM_Keys = 19; //R
			};
			case 19 : {
				ATM_Keys = 31; //S
			};
			case 20 : {
				ATM_Keys = 20; //T
			};
			case 21 : {
				ATM_Keys = 22; //U
			};
			case 22 : {
				ATM_Keys = 47; //V
			};
			case 23 : {
				ATM_Keys = 17; //W
			};
			case 24 : {
				ATM_Keys = 45; //X
			};
			case 25 : {
				ATM_Keys = 21; //Y
			};
			case 26 : {
				ATM_Keys = 44; //Z
			};
		};
	};

dokeyDown={
     private ["_r","_key_delay","_cutawaysound"] ;
     _key_delay  = 0.3;
	player setvariable ["key",false];
   _r = false ;

   if (player getvariable["key",true] and (_this select 1)  == ATM_Keys) exitwith {player setvariable["key",false]; [_key_delay] spawn {sleep (_this select 0);player setvariable["key",true]; }; _r};
     if ((_this select 1)  == ATM_Keys) then {
       if  (player != vehicle player and player getvariable ["cutaway",true]) then  {
       	if(_KeyNotSel)then 		// Spyke
   		{		
	   		playSound "Para";
			_cut = nearestObjects [player, ["Steerable_Parachute_F"], 5];
		   {
				deletevehicle _x;
		   } foreach _cut;
		};						// Spyke

	player addBackpack "B_Parachute";
	deletevehicle (player getvariable "frontpack"); player setvariable ["frontpack",nil,true];
    player setvariable["key",true];
    player setvariable ["cutaway",false];
    Cut_Rope = (findDisplay 46) displayRemoveEventHandler ["KeyDown", Cut_Rope];
    IsCutRope = true;
   };
    _r=true;
      };
     _r;
} ;

Getloadout={
_gear = [];
	_headgear = headgear player;
	_back_pack = backpack player;
	_back_pack_items = getItemCargo (unitBackpack player);
	_back_pack_weap = getWeaponCargo (unitBackpack player);
	_back_pack_maga = getMagazineCargo (unitBackpack player);


	_gear =
	[
		_headgear,
		_back_pack,
		_back_pack_items,
		_back_pack_weap,
		_back_pack_maga
	];
	_gear

};

Setloadout={
_unit = _this select 0;
	_gear = _this select 1;
	removeheadgear _unit;
	removeBackPack _unit;
	_unit addBackpack "B_AssaultPack_blk";
	removeBackPack _unit;
	if ((_gear select 1) != "") then {_unit addBackPack (_gear select 1);clearAllItemsFromBackpack _unit;};
	if ((_gear select 0) != "") then {_unit addHeadgear (_gear select 0);};
	if (count ((_gear select 3) select 0) > 0) then
	{
		for "_i" from 0 to (count ((_gear select 3) select 0) - 1) do
		{
			(unitBackpack _unit) addweaponCargoGlobal [((_gear select 3) select 0) select _i,((_gear select 3) select 1) select _i];
		};
	};
	if (count ((_gear select 4) select 0) > 0) then
	{
		for "_i" from 0 to (count ((_gear select 4) select 0) - 1) do
		{
			(unitBackpack _unit) addMagazineCargoGlobal [((_gear select 4) select 0) select _i,((_gear select 4) select 1) select _i];
		};
	};
	if (count ((_gear select 2) select 0) > 0) then
	{
		for "_i" from 0 to (count ((_gear select 2) select 0) - 1) do
		{
			(unitBackpack _unit) addItemCargoGlobal [((_gear select 2) select 0) select _i,((_gear select 2) select 1) select _i];
		};
	};
};

// BAD vehicle Type ERROR
Frontpack={
	params["_target"];				// Spyke
	_pack = unitBackpack _target;
	_class = typeOf _pack;

	[_target,_class] spawn {
		params["_target","_class"];	// Spyke
		private ["_packHolder"];

		_packHolder = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_collide"];
		//_packHolder addBackpackCargo [_class, 1];
		_packHolder attachTo [_target,[0.1,0.56,-.72],"pelvis"];
		_target setvariable ["frontpack", _packHolder,true];
		_packHolder setVectorDirAndUp [[0,1,0],[0,0,-1]];

		waitUntil {animationState _target == "para_pilot"};
		_packHolder attachTo [vehicle _target,[0.1,0.72,0.52],"pelvis"];
		_packHolder setVectorDirAndUp [[0,0.1,1],[0,1,0.1]];
	};
};