#include "..\..\script_macros.hpp"
/*
    File: fn_NovPayLoteryTicket.sqf
    Author: Novax
   	github : https://github.com/Novax69 <== Find my other scripts for arma here
    Date : 01/05/2020

    Description:
	Lotery Buy

*/


private["_ticketValue","_jackpotMin","_jackpotAdd","_arrayToGive","_enabledLimit","_loteryLimit","_value1","_value2","_value3","_value4","_value5","_value6","_value7","_random1","_random2","_random3","_random4","_random5","_random6","_random7"];  //Variable stay in this file

_arrayToGive = [];

_value1 = parseNumber(ctrlText 690212);
_value2 = parseNumber(ctrlText 690213);
_value3 = parseNumber(ctrlText 690214);
_value4 = parseNumber(ctrlText 690215);
_value5 = parseNumber(ctrlText 690216);
_value6 = parseNumber(ctrlText 690217);
_value7 = parseNumber(ctrlText 690218);

_ticketValue = LIFE_SETTINGS(getNumber,"nov_loteryTicket");

if(_ticketValue > BANK) exitWith {hint localize "STR_NOV_lotery_NotEnoughCash"}; 


BANK = BANK - _ticketValue; 

hint format[localize "STR_NOV_lottery_TicketBought",[_ticketValue] call life_fnc_numberText]; 
_random1 = round(random 49);
_arrayToGive set[0,_random1];
_random2 = round(random 49);
_arrayToGive set[1,_random2];
_random3 = round(random 49);
_arrayToGive set[2,_random3];
_random4 = round(random 49);
_arrayToGive set[3,_random4];
_random5 = round(random 49);
_arrayToGive set[4,_random5];
_random6 = round(random 49);
_arrayToGive set[5,_random6];
_random7 = round(random 49);
_arrayToGive set[6,_random7];

if((_random1 isEqualTo _value1) AND (_random2 isEqualTo _value2) AND (_random3 isEqualTo _value3) AND (_random4 isEqualTo _value4) AND (_random5 isEqualTo _value5) AND (_random6 isEqualTo _value6) AND (_random7 isEqualTo _value7)) then {
	BANK = BANK + JACKPOT;
	hint format [localize "STR_NOV_lottery_Jackpot",[JACKPOT] call life_fnc_numberText];
	_jackpotMin = LIFE_SETTINGS(getNumber,"nov_jackpotMin");
	JACKPOT = _jackpotMin;


	publicVariable "life_jackpot"; 


} else {
	_jackpotAdd = LIFE_SETTINGS(getNumber,"nov_jackpotAdd");
	_enabledLimit = LIFE_SETTINGS(getNumber,"nov_enableLimit"); 
	_loteryLimit = LIFE_SETTINGS(getNumber,"nov_jackpotLimit"); 

	if(_enabledLimit isEqualTo 1) then {
		if(JACKPOT + _jackpotAdd > _loteryLimit) then {
			JACKPOT = _loteryLimit;
		} else {
			JACKPOT = JACKPOT + _jackpotAdd;
		};
	} else {
		JACKPOT = JACKPOT + _jackpotAdd;
	};
	publicVariable "life_jackpot";

};


[JACKPOT] remoteExecCall ["DB_fnc_updateLotery",RSERV]; 


[1,_arrayToGive] call life_fnc_NovLoteryMenu; 

[6] call SOCK_fnc_updatePartial;


