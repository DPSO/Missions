class AFAR_UI {
idd=6966696;
movingEnable=1; 
enableSimulation=1;
controlsBackground[]={};
controls[]={LRRadio,afar_txt,afar_txt2,afar_bat,afar_halp,afar_but2,afar_but3,afar_but4};
objects[]={};
class LRRadio {
moving=1;
deleteable=0;
fade=0;
access=0;
type=0;
idc=90909;
style=48;
colorBackground[]={0,0,0,0};
colorText[]={1,1,1,1};
font="LCD14";
sizeEx=0;
lineSpacing=0;
text="scripts\AFAR\UI\148.paa";
fixedWidth=0;
shadow=1;
x=0.365*safezoneW+safezoneX;
y=0.3*safezoneH+safezoneY;
w=0.35*safezoneW;
h=0.68*safezoneH;
tooltipColorText[]={0,0,0,0};
tooltipColorBox[]={0,0,0,0};
tooltipColorShade[]={0,0,0,0};
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_Pos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_Pos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_txt: AFAR_Text {
idc=80085;
moving=0;
text="";
sizeEx=0;
x=0.504*safezoneW+safezoneX;
y=0.579*safezoneH+safezoneY;
w=0.069*safezoneW;
h=0.047*safezoneH;
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_txtPos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_txtPos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_txt2: AFAR_Text {
idc=23287;
moving=0;
deleteable=1;
text="<a shadow='2' align='center'>Click frequency knob<br/>to cycle channels</a>";
sizeEx=0;
x=0.485*safezoneW+safezoneX;
y=0.28*safezoneH+safezoneY;
w=0.13*safezoneW
h=0.08*safezoneH;
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_txt2Pos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_txt2Pos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_bat {
moving=0;
deletable=0;
fade=0;
access=0;
type=0;
idc=80086;
style=48;
colorBackground[]={0,0,0,0};
colorText[]={0,0,0,5};
font="LCD14";
sizeEx=0;
lineSpacing=0;
text="\A3\ui_f\data\map\markers\nato\b_installation.paa";
fixedWidth=0;
shadow=1;
x=0.505*safezoneW+safezoneX;
y=0.58*safezoneH+safezoneY;
w=0.0114*safezoneW;
h=0.041*safezoneH;
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_batPos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_batPos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_halp {
moving=0;
deletable=1;
fade=0;
access=0;
type=0;
idc=23288;
style=48;
colorBackground[]={0,0,0,0};
colorText[]={0,1,0,1};
font="LCD14";
sizeEx=0;
lineSpacing=0;
text="\A3\ui_f\data\map\markers\military\arrow2_CA.paa";
fixedWidth=0;
shadow=2;
x=0.528*safezoneW+safezoneX;
y=0.347*safezoneH+safezoneY
w=0.03*safezoneW;
h=0.05*safezoneH;
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_halpPos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_halpPos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_but2: AFAR_Button {
idc=60606;
moving=0;
x=0.53*safezoneW+safezoneX;
y=0.4*safezoneH+safezoneY;
w=0.025*safezoneW;
h=0.025*safezoneH;
tooltip="Cycle Channel";
action="";
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_but2Pos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_but2Pos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_but3: AFAR_Button {
idc=60686;
moving=0;
x=0.495*safezoneW+safezoneX;
y=0.39*safezoneH+safezoneY;
w=0.021*safezoneW;
h=0.023*safezoneH;
tooltip="Volume Control";
action="";
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_but3Pos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_but3Pos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};
class afar_but4: AFAR_Button {
idc=60696;
moving=0;
x=0.5*safezoneW+safezoneX;
y=0.65*safezoneH+safezoneY;
w=0.021*safezoneW;
h=0.019*safezoneH;
tooltip="Options";
action="call r_Opt;";
onLoad="if(isNil'r_UI')then{(_this#0)ctrlSetPosition(uiNamespace getVariable'AFAR_but4Pos');(_this#0)ctrlCommit 0;};";
onDestroy="uiNamespace setVariable['AFAR_but4Pos',ctrlPosition(_this#0)];(_this#0)ctrlCommit 0;";};};