#include "..\..\script_macros.hpp"
/*
    File: fn_pulloutAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Pulls civilians out of a car if it's stopped.
*/
private ["_crew"];
_crew = crew cursorObject;

{
    if (isPlayer _x) then {
        _x setVariable ["transporting",false,true]; _x setVariable ["Escorting",false,true];
        [_x] remoteExecCall ["life_fnc_pulloutVeh",_x];
    };
} forEach _crew;
