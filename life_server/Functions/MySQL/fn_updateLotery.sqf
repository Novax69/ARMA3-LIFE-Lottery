/*
	file : fn_updateLotery.sqf
	author : Novax
	github : https://github.com/Novax69 <== Find my other scripts for arma here
	date : 01/05/2020

	Description : Update the DB for the lotery Table 

*/


private["_value","_query"];

_value = _this select 0;


_query = format["UPDATE lotery SET jackpot = '%1' WHERE id='1'",_value];


if(_query isEqualTo "") exitWith {
	diag_log "====== Novax Script Error ======";
	diag_log format ["Fichier fn_updateLotery.sqf : _query = %1",_query];
	diag_log "====== Novax Script Error ======";
}; 

[_query,1] call DB_fnc_asyncCall;