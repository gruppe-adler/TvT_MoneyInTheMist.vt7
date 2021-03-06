#include "component.hpp"

params ["_side"];

private _points = switch (_side) do {
    case (WEST): {missionNamespace getVariable ["mitm_common_points_west",0]};
    case (EAST): {missionNamespace getVariable ["mitm_common_points_east",0]};
    case (INDEPENDENT): {missionNamespace getVariable ["mitm_common_points_independent",0]};
    case (CIVILIAN): {missionNamespace getVariable ["mitm_common_points_civilian",0]};
    default {0};
};

_points
