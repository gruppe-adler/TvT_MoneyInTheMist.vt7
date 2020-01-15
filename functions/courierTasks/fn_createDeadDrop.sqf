#include "component.hpp"

params ["_pos"];

private _types = [
    "SMALL TREE",
    "FENCE",
    "WALL",
    "HIDE"
];

private _possibleObjects = [];
for [{_i=0}, {_i<10}, {_i=_i+1}] do {
    _searchPos = [_pos,[10,40],[0,360],""] call mitm_common_fnc_findRandomPos;
    _possibleObjects = nearestTerrainObjects [_searchPos,_types,20,false,false];
    if (count _possibleObjects > 0) exitWith {};
};
if (count _possibleObjects == 0) exitWith {objNull};

private _deadDrop = selectRandom _possibleObjects;
private _deadDropLogic = createAgent ["Logic",getPos _deadDrop,[],0,"CAN_COLLIDE"];

_deadDropLogic
