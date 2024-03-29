//Diver Stats by triniscourge: For Open Circuit Recreational Diving------
//-----------------------------------------------------------------------
_trinDiver = _this select 0;
_sacRT = _this select 1;
_tankSize = _this select 2;
_maxppO = _this select 3; //Max ppO2 (atm). Determines the Maximum Operating Depth of the Diver.
_percO2 = _this select 4; //Percentage of Oxygen in breathing mix.
_percN2 = _this select 5; //Percentage of Nitrogen in breathing mix.
_percHe = _this select 6; //Percentage of Helium in breathing mix.
_tempC = _this select 7; //Temperature at surface (Celcius)

_airTotal = _percO2 +_percN2 +_percHe;
_psi = _tankSize; //Starting PSI of a full tank.



_airConsumption = 0;
_ascTime = 0;
_maxDepth = 0;
_timeleft = 0;
_diveTime = 0;
_diverBearing = 0;
_O2toxperc = 0;

//Animated Bar
_ObarX = safeZoneX+(safeZoneW*0.845);
_ObarY = safeZoneY+(safeZoneH*0.645);
_ObarW = safeZoneW* 0.0001;
_ObarH = safeZoneH* 0.005;
_ObarPerc = 0;
_HbarX = safeZoneX+(safeZoneW*0.9178);
_HbarY = safeZoneY+(safeZoneH*0.645);
_HbarW = safeZoneW* 0.0001;
_HbarH = safeZoneH* 0.005;
_HbarPerc = 0;
_NbarX = safeZoneX+(safeZoneW*0.8455);
_NbarY = safeZoneY+(safeZoneH*0.46);
_NbarW = safeZoneW* 0.005;
_NbarH = safeZoneH* 0.0001;
_NbarPerc = 0;

//Toxicity Variables
_tisTox = 0;
_narcCntdn = 1;
_O2ToxCntdn = 1;
_HeToxCntdn = 1;
_fAscCntdn = 1;
_diverDamage = 0;

//---Narcosis Variables---
_narcFactor = 0;
_narcEffectNeg = 0;

//---Deco Variables---
_decoTime = 0;
_depth2deco = 0;
_depth2deepStop = 0;
_deepStopTime = 0;
_diveCnt = 0;
_doDeco = 0;
_doDeepStop = 0;
_deepStopCeil = 0;
_tisAval = 0;
_tisBval = 0;
_AscCeil = 0;
_AscCeilB = 0;
_AscCeilA = 0;
_tisConst = 0;
_totalTis = 0;
_tisK = (ln 2)/4;
_HeAmt = 0.000001;
_N2Amt = 0.000001;
_O2Amt = 0.000001;

//---Depth Variables---
_depth = 0;
_depthA = 0;
_depthB = 0;
_dDepth = 0;
_maxOD = 0;

//---Pressure Variables---
_pressure = 0;
_pressureA = 0;
_pressureB = 0;
_dPressure = 0;

//---Gas Variables---
//--O2--
_oTot = 0;
_oPerc = 0;
_O2TisTot = 0;
_pOAlv = 0;
//--N2--
_nTot = 0;
_nPerc = 0;
_nTisTot = 0;
_pNAlv = 0;
//--He--
_HeTot = 0;
_HeTisTot = 0;
_pHeAlv = 0;


//---Temp Variables---
_tempF = 0;
_tempK = 0;

/*
Usage: In diver init insert: eg. null = [this, 25, 3000, 1.1, 0.15, 0.30, 0.55, 25] execVM "trindisplay\diverstats.sqf"
The values in the array represent [diver, SAC Rate, TankSize, ppO2 Threshold (advanced users), %O2 in breathing mix(decimal),%N2 in breathing mix(decimal),%He in breathing mix(decimal), Temperature at sufrace (deg Celcius]

It is possible to create any mixture of O2, N2 and He (provided that O2 is >= 9% and the sum of all three is 1)
*/

//---Main Loop---
scopeName "main";
//if (isServer && !isDedicated) then
while {TRUE} do
{

	private "_pGridPos";

	while {alive _trinDiver && _psi >= 0 && player == _trinDiver} do
 {


	scopeName "uw_loop";
	if (underwater _trinDiver) then
			{

			/*
			--DEBUG--
			hint format ["O Tis %1 \n N Tis %2 \n He Tis %3 \n TisA Val %4 \n TisB Val %5 \n DecoTime %6 \n Deep Stop: %7 \n DS Time: %8 \n NarcFactor  %9 \n TisSat %10 \n Ceiling %11 \n Damage: %12 \n Ceiling(ex) %13 \n %14", _O2TisTot, _nTisTot, _HeTisTot, _tisAval, _tisBval, [((_decoTime)/60)+.01,"HH:MM"] call bis_fnc_timetostring, (round(_deepStopCeil /5) *5),[((_deepStopTime)/60)+.01,"HH:MM"] call bis_fnc_timetostring, _narcFactor, _tisTox, _AscCeil, _diverDamage, _AscCeilB, _O2toxperc];
			//titleText [format["%1", _ObarPerc],"PLAIN"];
			//titleText [format["%1", _HbarPerc],"PLAIN"];
			//titleText [format["%1", _doDeco],"PLAIN"];
			*/

			if (isNil "_tempC") then
			{
				_tempC = 20;
			};

			_pGridPos = mapGridPosition _trinDiver;

			//Check if player enters valid percentages for breathing gas
			if (_airTotal >1) then
			{
				_trinDiver sideChat "Error in init argument: Sum of breathing gasses should equal 1";
				breakOut "uw_loop";
			}
				else {
					if (_airTotal < 1) then
						{
							_trinDiver sideChat "Error in init argument: Sum of breathing gasses should equal 1";
							breakOut "uw_loop";
						}
					};

			_diveTime = _diveTime + 1;
			_depth = (((getPosASL _trinDiver) select 2)* -3.28); //Conversion to feet (inverted for pressure calculation)
			_rdepth = ((getPosASL _trinDiver) select 2); //Conversion to feet (inverted for pressure calculation)
			_pressure = ((_depth / 33) + 1);
			_depth2deco = _depth - _AscCeil;
			_airConsumption = (_pressure * _sacRT);
			_psi = (_psi - (_airConsumption /60));
			_timeleft = ((_psi / _airConsumption) *60);
			_depthA = (((getPosASL _trinDiver) select 2)* -3.28);
			_pressureA = ((_depthA / 33) + 1);
			_depth2deepStop = _depth - _deepStopCeil;
			_diverBearing = getdir _trinDiver;
			_diverDamage = getDammage _trinDiver;
			_ObarPerc = (_pOAlv/_maxppO) *0.065;
			_HbarPerc = (_pHeAlv/8) *0.065;
			_NbarPerc = (_nTisTot/2.38) * 0.24;
			_ObarW = _ObarW + _ObarPerc;

			//---N2/O2/He Gas calculations; See functions\trin_fn_gasCalc.sqf---
			_tisConst = (-_tisK *(_diveTime/60));
			_tempK = _tempC + 273.15;
			_tempF = (_tempC *1.8) +32;
			_nTot = [_pressure, _percN2, 1600, _tempK, 28, _pNAlv] call getGasTot;
			_oTot = [_pressure, _percO2, 756.7, _tempK, 32, _pOAlv] call getGasTot;
			_HeTot = [_pressure, _percHe, 2865, _tempK, 8, _pHeAlv] call getGasTot;
			_totalTis = _nTisTot + _HeTisTot + _O2TisTot;
			_tisTox = _nTisTot + _HeTisTot;
			_pNAlv = _percN2 *(_pressure - 0.0567);
			_pHeAlv = _percHe *(_pressure - 0.0567);
			_pOAlv = _percO2 *(_pressure - 0.0567);
			_maxOD = ((_maxppO/_percO2) -1) *33;
			_nPerc = ((_nTot /1000)/5) *100;
			_oPerc = ((_oTot /1000)/5) *100;
			_HePerc = ((_HeTot /1000)/5) *100;
			_narcFactor = _pOAlv +_pNAlv +(0.23 *_pHeAlv);
			_eNdepth = ((_narcFactor -1) *10) *3.28;
			_narcEffectNeg = 1 -(_narcFactor /10);


			//---Main display elements---
			disableSerialization;
			2 cutRsc ["trin_disp","PLAIN"];
			_displayUI = uiNamespace getVariable 'trin_disp';
			(_displayUI displayCtrl 1111) ctrlSetText format["%1",[((round(_ascTime))/60)+.01,"HH:MM"] call bis_fnc_timetostring];
			(_displayUI displayCtrl 1112) ctrlSetText format["%1",(round(_rdepth *-10))/10];
			(_displayUI displayCtrl 1113) ctrlSetText format["%1",[((_diveTime)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
			(_displayUI displayCtrl 1114) ctrlSetText format["%1",(round((_maxDepth /3.28) *10))/10];
			(_displayUI displayCtrl 1115) ctrlSetText format["%1",[((_timeleft)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
			(_displayUI displayCtrl 1116) ctrlSetText format["%1",(round(_pressure *10))/10];
			(_displayUI displayCtrl 1117) ctrlSetText format["%1",round(_airConsumption)];
			(_displayUI displayCtrl 1118) ctrlSetText format["%1",round(_psi)];
			(_displayUI displayCtrl 1121) ctrlSetText format["%1",(round((_dDepth /3.28) *10))/10];
			(_displayUI displayCtrl 1122) ctrlSetText format["%1",(round(_nPerc *10))/10];
			(_displayUI displayCtrl 1126) ctrlSetText format["%1",round(_diverBearing)];
			(_displayUI displayCtrl 1127) ctrlSetText format["%1 C | %2 F",(round(_tempC *10))/10, (round(_tempF *10))/10];
			(_displayUI displayCtrl 1128) ctrlSetText format["%1",_pGridPos];
			(_displayUI displayCtrl 1129) ctrlSetText format["%1",_AscCeil];
			(_displayUI displayCtrl 1130) ctrlSetText format["%1",[((_decoTime)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
			(_displayUI displayCtrl 1131) ctrlSetText format["%1",(round((_deepStopCeil /3.28) /5) *5)];
			(_displayUI displayCtrl 1132) ctrlSetText format["%1",[((_deepStopTime)/60)+.01,"HH:MM"] call bis_fnc_timetostring];
			(_displayUI displayCtrl 1133) ctrlSetText format["MAX OP %1M",round(_maxOD /3.28)];
			(_displayUI displayCtrl 1134) ctrlSetPosition [_ObarX,_ObarY,_ObarPerc,_ObarH];
			(_displayUI displayCtrl 1134) ctrlCommit 0.0;
			(_displayUI displayCtrl 1135) ctrlSetPosition [_HbarX,_HbarY,_HbarPerc,_HbarH];
			(_displayUI displayCtrl 1135) ctrlCommit 0.0;
			//(_displayUI displayCtrl 1136) ctrlSetPosition [_NbarX,_NbarY,_NbarW,_NbarPerc];
			//(_displayUI displayCtrl 1136) ctrlCommit 0.0;

			//Display elements for tissue saturation
			switch (true) do
			{
						case (_nTisTot <= 0): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_1.paa";
						};
						case ((_nTisTot > 0) && (_nTisTot <= 0.44)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_1.paa";
						};
						case ((_nTisTot > 0.44) && (_nTisTot <= 0.66)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_2.paa";
						};
						case ((_nTisTot > 0.66) && (_nTisTot <= 0.88)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_3.paa";
						};
						case ((_nTisTot > 0.88) && (_nTisTot <= 1.1)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_4.paa";
						};
						case ((_nTisTot > 1.1) && (_nTisTot <= 1.32)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_5.paa";
						};
						case ((_nTisTot > 1.32) && (_nTisTot <= 1.54)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_6.paa";
						};
						case ((_nTisTot > 1.54) && (_nTisTot <= 1.96)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_7.paa";
						};
						case ((_nTisTot > 1.96) && (_nTisTot <= 2.15)): {
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_8.paa";
						};
						case ((_nTisTot > 2.15) && (_nTisTot <= 2.38)): {
						//playSound "trin_dispWarn";
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_9.paa";
						};
						case (_nTisTot > 2.38): {
						playSound "trin_dispWarn";
						(_displayUI displayCtrl 1124) ctrlSetText "trindisplay\images\tis_9.paa";
						};
			};

			//Display for PPO2
			switch (true)do
			{
					case ((_ObarPerc > 0.059) && (_ObarPerc < 0.079)): {
					(_displayUI displayCtrl 1134) ctrlSetBackgroundColor [1, 1, 0, 0.5];
					};

					case ((_ObarPerc > 0.079) && (_ObarPerc < 0.119)): {
					(_displayUI displayCtrl 1134) ctrlSetBackgroundColor [1, 0.4, 0, 0.5];
					};

					case (_ObarPerc > 0.119): {
					_ObarPerc = 0.119;
					playSound "trin_dispWarn";
					(_displayUI displayCtrl 1134) ctrlSetBackgroundColor [1, 0, 0, 0.5];
					};
			};

			//Display for He
			switch (true)do
			{
					case ((_HbarPerc > 0.059) && (_HbarPerc < 0.079)): {
					(_displayUI displayCtrl 1135) ctrlSetBackgroundColor [1, 1, 0, 0.5];
					};

					case ((_HbarPerc > 0.079) && (_HbarPerc < 0.118)): {
					(_displayUI displayCtrl 1135) ctrlSetBackgroundColor [1, 0.4, 0, 0.5];
					};

					case (_HbarPerc > 0.118): {
					_HbarPerc = 0.118;
					playSound "trin_dispWarn";
					(_displayUI displayCtrl 1135) ctrlSetBackgroundColor [1, 0, 0, 0.5];
					};
			};

			//Display elements for ascent indicators
				switch (true) do
			{
					case (_dDepth > 0): {
						(_displayUI displayCtrl 1119) ctrlSetText "trindisplay\images\upArrow.paa";
						(_displayUI displayCtrl 1120) ctrlSetText "^";
						};
					case (_dDepth < 0): {
						(_displayUI displayCtrl 1119) ctrlSetText "trindisplay\images\downArrow.paa";
						(_displayUI displayCtrl 1120) ctrlSetText "v";
						};
					case (_dDepth == 0): {
						(_displayUI displayCtrl 1119) ctrlSetText "trindisplay\images\noArrow.paa";
						(_displayUI displayCtrl 1120) ctrlSetText "";
						(_displayUI displayCtrl 1134) ctrlSetText "";
						};
			};

			//Display element for ascent warning and init DCS effects
			if (_dDepth > 8) then
				{
					playSound "trin_dispExit";
					(_displayUI displayCtrl 1133) ctrlSetText "";
					(_displayUI displayCtrl 1125) ctrlSetText "FAST ASCENT!";
					_fAscCntdn = _fAscCntdn - 1;
					if (_fAscCntdn == 0) then
					{
						null = ["true", "true", _trinDiver, (1-(_nTisTot *1.25))] execVM "trindisplay\effects\trin_DCSEffects.sqf";
						_fAscCntdn = 5;
					};
				}
					else {
							_fAscCntdn = 1;
						};

			//Ceiling Calculation based on % of gasses present
			switch (true) do
			{
					case (_percN2 < 0.1): {
						_tisAval = ((0.0346 *_HeTisTot) +(1.382 *_O2TisTot))/ ((_HeAmt *0.0346) + (_O2Amt *1.382));
						_tisBval = ((0.02380 *_HeTisTot) +(0.03186 *_O2TisTot))/ ((_HeAmt *0.02380) +(0.03186 *_O2Amt));
						_AscCeilA = (((_HeTisTot +_O2TisTot) -_tisAval) *_tisBval) *3.28;
						_AscCeilB = (_AscCeilA + _tisTox) *2.6;
						};


					case (_percHe < 0.1): {
						_tisAval = ((1.37 *_nTisTot) +(1.382 *_O2TisTot))/ ((_N2Amt *1.37) + (_O2Amt *1.382));
						_tisBval = ((0.03870 *_nTisTot) +(0.03186 *_O2TisTot))/ ((_N2Amt *0.03870) +(0.03186 *_O2Amt));
						_AscCeilA = (((_nTisTot +_O2TisTot) -_tisAval) *_tisBval) *3.28;
						_AscCeilB = (_AscCeilA + _tisTox) *2.6;
						};

					case (_percO2 < 0.09): {
						_trinDiver sideChat "Error in init argument: You need at least 9% O2  in your tank";
						breakOut "uw_loop";
						};

					case ((_percO2 > 0.09) &&(_percHe >= 0.1) &&(_percN2 >= 0.1)): {
						_tisAval = ((1.37 *_nTisTot) +(0.0346 *_HeTisTot))/ ((_N2Amt *1.37) + (_HeAmt *0.0346));
						_tisBval = ((0.03870 *_nTisTot) +(0.02380 *_HeTisTot))/ ((_N2Amt *0.03870) + (_HeAmt *0.02380));
						_AscCeilA = (((_nTisTot +_HeTisTot) -_tisAval) *_tisBval) *3.28;
						_AscCeilB = _AscCeilA  +0.00001;
						};
			};

			//Controls for Ascent Ceiling Calculation.
			if (_percHe > 0) then
			{
				_HeAmt = 1;
			}
				else
				{
					_HeAmt = 0;
				};

			if (_percN2 > 0) then
			{
				_N2Amt = 1;
			}
				else
				{
					_N2Amt = 0;
				};

			sleep 1; //---DO NOT CHANGE --- All time based calculations dependent on value.

			_depthB = (((getPosASL _trinDiver) select 2)* -3.28);
			_pressureB = ((_depthB / 33) + 1);
			_dPressure = (_pressureB - _pressureA)/60;
			_dDepth = _depthA - _depthB;

			//Simulate Tissue Saturation; See trindisplay\functions\trin_fn_initTissues.sqf
			switch (true) do
			{
					case (_depthB > _depthA): {
						 _nTisTot = [_percN2, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						 _HeTisTot = [_percHe, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						 _O2TisTot = [_percO2, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						_tempC = _tempC + (_dDepth *0.0004);

						};
					case (_depthA > _depthB): {
						_nTisTot = [_percN2, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						_HeTisTot = [_percHe, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						_O2TisTot = [_percO2, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						};
					case (_depthA == _depthB): {
						_nTisTot = [_percN2, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						_HeTisTot = [_percHe, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						_O2TisTot = [_percO2, _tisK, _pressure, _dPressure, _diveTime] call getTisTot;
						};
			};

			//Calculate Max Depth so far
			if ((_depthB > _depthA) && (_maxDepth < _depthB)) then
			{
				_maxDepth = _depthB;
			};

			//Set Ascent Ceiling
			if ((_AscCeil < _AscCeilB) && (_doDeco == 0))then
			{
				 _AscCeil = (round(_AscCeilB /10)) *10;

			};

			//Init Deco Profile
			if((_AscCeil == 10) && (_doDeco == 0)) then
			{
				_decoTime = _AscCeil *(round(_totalTis *4));
				_doDeco = 1;
				_diveCnt = _diveCnt - 1;
				playSound "trin_dispStart";
			};

			if((_AscCeilB > 10) && (_doDeepStop < 1)) then
			{
				_deepStopCeil = _depth /2;
				_deepStopTime = _AscCeil *(round(_totalTis *3.5));
				playSound "trin_dispStart";
				_doDeepStop = 1;
			};

			// Start deco countdown once unit is with range
			if ((_doDeco == 1) && !(_depth2deco > 3) && !(_depth2deco < -3)) then
			{
				_decoTime = _decoTime - 1;
				playSound "trin_dispCount";
			};

			//Stop deco countdown and reset timer
			if(_decoTime < 0) then
			{
				_decoTime = 0;
				_AscCeil = 0;
				_doDeco = 0;
				playSound "trin_dispClear";
			};

			// Start deep stop countdown once unit is with range
			if ((_doDeepStop == 1) && !(_depth2deepStop > 3) && !(_depth2deepStop < -3)) then
			{
				_deepStopTime = _deepStopTime - 1;
				playSound "trin_dispCount";
			};

			//Stop deep stop countdown and reset timer
			if(_deepStopTime < 0) then
			{
				_deepStopTime = 0;
				_deepStopCeil = 0;
				_doDeepStop = 0;
				playSound "trin_dispClear";

			};

			//Narcotic Effects kick in if toxicity threshold passed. --WIP--
			if (_narcFactor > 8) then
				{
					//_narcDamMult = _narcFactor/50;
					_narcCntdn = _narcCntdn - 1;
					if (_narcCntdn == 0) then
					{
						null = ["true", "true", _trinDiver, (_narcFactor/50)] execVM "trindisplay\effects\trin_narcEffects.sqf";
						_narcCntdn = 33;
					};
				}
					else {
							_narcCntdn = 1;
						};

			//Check ppHe and init tox effects if surpassed
			if (_pHeAlv > 8) then
			{
				_HeToxCntdn = _HeToxCntdn - 1;
				if (_HeToxCntdn == 0) then
				{
					null = ["true", "true", _trinDiver] execVM "trindisplay\effects\trin_HeToxEffects.sqf";
					_HeToxCntdn = 33;
				};
			}
				else {
						_HeToxCntdn = 1;
					};

			//Calculate ascending time and temperature change at depth
			if ((_depthA > _depthB) && (_dDepth > 1)) then
			{
				_ascTime = _depth / _dDepth;
				_tempC = _tempC + (_dDepth *0.0004);
			}
				else
					{
					_ascTime = 0;
					_tempC = _tempC
					};

			//Check if player surpasses Maximum Operating Depth and init O2 Tox effects
			if (_depth > _maxOD) then
			{
				_O2DamMult = _O2TisTot/6;
				_O2ToxCntdn = _O2ToxCntdn - 1;
				//player sideChat format ["%1", _O2ToxCntdn];
				if (_O2ToxCntdn == 0) then
				{
					null = ["true", "true", _trinDiver, _O2DamMult] execVM "trindisplay\effects\trin_O2ToxEffects.sqf";
					_O2ToxCntdn = 33;
				};
				playSound "trin_dispWarn";
			}
				else {
						_O2ToxCntdn = 1;
					};

			//Prevent huge numbers from clogging diaplay
			if(_ascTime > 600) then
			{

				_ascTime = 0;

			};

			//Running out of air results in tank being discarded.
			if (_psi < 0) then
            {
                removeVest _trinDiver;
            };

	};

	2 cutText ["","PLAIN"];
	_diveCnt = 0;

 };
};
