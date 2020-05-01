/* Add theses lines at the end of the file before the diag_log function 

	Edits : Add Lotery
	author : Novax 
	github : https://github.com/Novax69 <== Find my other scripts for arma here
	date : 01/05/2020


*/


_query = "SELECT jackpot FROM lotery WHERE id='1'";
_queryResult = [_query,2] call DB_fnc_asyncCall;

life_jackpot = _queryResult select 0;

publicVariable "life_jackpot";

diag_log "================ Novax Script ================";
diag_log format ["life_jackpot = %1",life_jackpot];
diag_log "================ Novax Script ================";