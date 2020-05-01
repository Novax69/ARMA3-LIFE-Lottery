// Here is the code to add inside your NPC / Object to access the menu 

this enableSimulation false; 
this allowDamage false; 

// FRENCH :
this addAction["<t color='#ADFF2F'>Loto</t>",life_fnc_NovLoteryMenu,[0,[nil]],0,FALSE,FALSE,"",' isNull objectParent player && player distance _target < 4 '];

// ENGLISH :
this addAction["<t color='#ADFF2F'>Lotery</t>",life_fnc_NovLoteryMenu,[0,[nil]],0,FALSE,FALSE,"",' isNull objectParent player && player distance _target < 4 '];
