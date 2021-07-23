// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
00 for training tasks
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Teach
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
As required
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Learn Something
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
This is a Training Mission
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
But there is a Battalion of CSAT (400) to engage
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
A reinforced Company Guards the training island.
"]];

// ====================================================================================
// NOTES: Communications
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Challenge–response authentication","
<br/><br/>
<font size='18'>Challenge–response authentication</font>
<br/>
A 	MNBVCXZLKJHGFDSAPOIUYTREWQ
<br/>
B 	QAZWSXEDCRFVTGBYHNUJMIKOLP
<br/>
C 	QWERTYUIOPASDFGHJKLZXCVBNM
<br/>
D 	PLOIKUJMYHNTGBRFVEDCWSXQAZ
<br/>
E 	RFVEDCWSXQAZTYUIOPGHJKLBNM
<br/>
F 	UIOPGHSXQAZTRFVEDCYJKLBNMW
<br/>
G 	UJMIKOLPYHNTGBRFVEDCWSXQAZ
<br/>
H 	TGBRFVEDCUJMIKOLWSXQAZPYHN
<br/>
I 	FVEXHNQAZPYJMIKOLWSTGBDCUR
<br/>
J 	DCUJLTGBRWSXQAMIKOZPYHNFVE
<br/>
K 	KFVEGBRWSXQAMIOZPYDCUJLTHN
"]];


private _radio = player createDiaryRecord ["diary", ["Radio frequencies", [] call fnc_briefing_listRadioFrequencies]];
// ====================================================================================
