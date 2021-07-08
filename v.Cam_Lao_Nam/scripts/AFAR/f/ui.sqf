if (alive r_p&&r_p call r_RC) then {
    if (isNull objectParent r_p&&(!(animationState r_p in["ainvpercmstpsraswrfldnon", "amovpknlmstpsraswrfldnon", "ainvppnemstpsraswrfldnon"]))) then {
        r_p playAction"Gear"
    };
    if (isNull(findDisplay 6966696)) then {
        if (r_dn_&&!r_up_) then {
            r_dn_=true;
            r_up_=true
        };
        createdialog"AFAR_UI";
        ctrlEnable[90909, false];setMousePosition[0.5, 0.5];
        private _d=(findDisplay 6966696);
        (_d displayCtrl 60606)ctrlsetEventHandler["MouseButtondown", "if (_this#1 in[0, 1]) then {
            if (_this#1==0) then {
                call NextCH
            };
            if (_this#1==1) then {
                call PrevCH
            }
        }"];
        (_d displayCtrl 60686)ctrlsetEventHandler["MouseButtondown", "if (_this#1 in[0, 1]) then {
            playSound'r_nob';
            if (_this#1==0) then {
                r_vol=parseNumber(r_vol toFixed 1);
                if (r_vol<1) then {
                    r_vol=r_vol+0.1;
                    systemChat format['Volume: %1 of 1.0', r_vol]
                }
            };
            if (_this#1==1) then {
                if (r_vol>0) then {
                    r_vol=r_vol-0.1;
                    if (r_vol<=0.09||r_vol>1) then {
                        r_vol=0
                    };
                    r_vol=parseNumber(r_vol toFixed 1);systemChat format['Volume: %1 of 1.0', r_vol]
                }
            }
        }"];
        _txt=[switch(currentChannel)do{
            case 1:{
                "side"
            };
            case 2:{
                "COMMand"
            };
            case 3:{
                "group"
            };
            case 4:{
                "vehicle"
            };
            case 5:{
                "NONE"
            };
            case(ch6+5):{
                toUpperANSI r_mCHname
            };
            case(ch7+5):{
                toUpperANSI r_mCHname
            };
            case(ch8+5):{
                toUpperANSI r_mCHname
            };
            case(ch9+5):{
                "SPECTAtor"
            };
            default{
                if (alive r_p) exitwith {
                    5 enableChannel r_dCH;
                    setCurrentChannel 5;"NONE"
                };
                if (!alive r_p&&"Spectator"in getMissionConfigValue"respawnTemplates") then {
                    setCurrentChannel(ch9+5);
                    "SPECTAtor"
                };
            };
        },
        (if (channelEnabled currentChannel#1) then {
            "<img size='0.7' image='\A3\ui_f\data\igui\cfg\simpleTasks\types\listen_ca.paa'/>"
        } else {
            "<t color='#22000000'><img size='0.7' image='\A3\ui_f\data\igui\cfg\simpleTasks\types\listen_ca.paa'/></t>"
        }),
        (if (channelEnabled currentChannel#0) then {
            "<img size='0.7' image='\A3\ui_f\data\igui\cfg\simpleTasks\types\talk_ca.paa'/>"
        } else {
            "<t color='#22000000'><img size='0.7' image='\A3\ui_f\data\igui\cfg\simpleTasks\types\talk_ca.paa'/></t>"
        }),
        (if((currentChannel in[1, 3, 4]&&{
            _x distance r_p<=3500
        }count(allplayers-[r_p])>0)||(currentChannel in[2, (ch6+5), (ch7+5), (ch8+5)]&&{
            _x distance r_p<=8000
        }count(allplayers-[r_p])>0))then{
            "<img size='0.7' image='\A3\ui_f\data\igui\cfg\simpleTasks\types\radio_ca.paa'/>"
        } else {
            "<t color='#22000000'><img size='0.7' image='\A3\ui_f\data\igui\cfg\simpleTasks\types\radio_ca.paa'/></t>"
        })];
        (_d displayCtrl 80085)ctrlsetstructuredtext(parsetext format["<a size='0.7'> G01</a><a align='right'>%2%3	%4<br/></a><a size='0.7'> CH: %1<br/></a><a size='0.6' align='right'>PT		FM	</a>", _txt#0, _txt#1, _txt#2, _txt#3]);
        titleText["<t size='2' shadow='2' align='left'>Press 'Esc' key to put away radio</t>", "PLAin", -1, true, true];
        titleFadeOut 5;
        if (isnil"r_FNG") then {
            r_FNG=0
        };
        if (r_FNG<6) then {
            r_FNG=r_FNG+1;
            (_d displayCtrl 23287)ctrlsettextColor[0, 1, 0, 1];
            (_d displayCtrl 23287)ctrlsetFont"PuristaMedium";
            (_d displayCtrl 23288)ctrlsetangle[180, 0.5, 0.5, false];
            (_d displayCtrl 23288)ctrlCommit 0;
            {
                _x ctrlsetBackgroundColor[0, 1, 0, 0.2];
                _x ctrlsetFade 0;_x ctrlCommit 0
            }forEach[(_d displayCtrl 60606), (_d displayCtrl 60686), (_d displayCtrl 60696)]
        } else {
            {
                _x ctrlsetBackgroundColor[0, 0, 0, 0];
                _x ctrlsetFade 0.99;_x ctrlCommit 0
            }forEach[(_d displayCtrl 60606), (_d displayCtrl 60686), (_d displayCtrl 60696), (_d displayCtrl 23287), (_d displayCtrl 23288)]
        };
        if!(isnil'r_UI')then{
            r_UI=nil
        }
    } else {
        closedialog 90909
    }
}