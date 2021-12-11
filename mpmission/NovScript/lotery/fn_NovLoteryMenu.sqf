#include "..\..\script_macros.hpp"
/*
    File: fn_NovLoteryMenu.sqf
    Author: Novax
   	github : https://github.com/Novax69 <== Find my other scripts for arma here
    Date : 01/05/2020

    Description:
	Lotery Menu

*/
disableSerialization; //Always needed for the GUI (better)

private["_mode","_arrayAnswer","_ticketAmmount"];

_ticketAmmount = LIFE_SETTINGS(getNumber,"nov_loteryTicket");
_maxValue = NOV_PARAMS(getNumber,"nov_maxValuePossible");

_mode = _this select 0;
_arrayAnswer = _this select 1;

if (!dialog) then {
    if (!(createDialog "Life_lotery_management")) exitWith {};  //Create the GUI menu
};


switch(_mode) do {

	case 0: {
		CONTROL(690200,690205) ctrlSetStructuredText parseText format ["X"];  
		CONTROL(690200,690206) ctrlSetStructuredText parseText format ["X"]; 
		CONTROL(690200,690207) ctrlSetStructuredText parseText format ["X"]; 
		CONTROL(690200,690208) ctrlSetStructuredText parseText format ["X"]; 
		CONTROL(690200,690209) ctrlSetStructuredText parseText format ["X"]; 
		CONTROL(690200,690210) ctrlSetStructuredText parseText format ["X"]; 
		CONTROL(690200,690211) ctrlSetStructuredText parseText format ["X"]; 
		//First open
	};

	case 1:{

		CONTROL(690200,690205) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 0];  
		CONTROL(690200,690206) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 1]; 
		CONTROL(690200,690207) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 2]; 
		CONTROL(690200,690208) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 3]; 
		CONTROL(690200,690209) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 4]; 
		CONTROL(690200,690210) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 5]; 
		CONTROL(690200,690211) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 6]; 
	};
};


CONTROL(690200,690219) ctrlSetStructuredText parseText format[localize "STR_NOV_lottery_Info",[_ticketAmmount] call life_fnc_numberText,[JACKPOT] call life_fnc_numberText, (_maxValue) call life_fnc_numberText];
