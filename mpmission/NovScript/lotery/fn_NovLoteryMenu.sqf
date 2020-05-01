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

_ticketAmmount = LIFE_SETTING(getNumber,"nov_loteryTicket");

_mode = _this select 0;


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
		_arrayAnswer = _this select 1;
		CONTROL(690200,690205) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 0];  
		CONTROL(690200,690206) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 1]; 
		CONTROL(690200,690207) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 2]; 
		CONTROL(690200,690208) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 3]; 
		CONTROL(690200,690209) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 4]; 
		CONTROL(690200,690210) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 5]; 
		CONTROL(690200,690211) ctrlSetStructuredText parseText format ["%1", _arrayAnswer select 6]; 
	};
};


CONTROL(690200,690219) ctrlSetStructuredText parseText format["Le prix du ticket est à %1€ <br/> Le jackpot est de %2€ <br/> Chiffres entre 0 et 49 inclus",[_ticketAmmount] call life_fnc_numberText,[JACKPOT] call life_fnc_numberText];
