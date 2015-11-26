/*
 * Author: BaerMitUmlaut
 * Function for opening doors and extending the hook for most vanilla helos.
 *
 * Arguments:
 * 0: Helicopter <OBJECT>
 *
 * Return Value:
 * Amount of time to wait before cutting ropes.
 *
 * Example:
 * [_vehicle] call ace_fastroping_onCutRopesCommon
 *
 * Public: No
 */

#include "script_component.hpp"
params ["_vehicle"];
private ["_fries"];

_vehicle animateDoor ["door_R", 0];
_vehicle animateDoor ["door_L", 0];

_fries = _vehicle getVariable [QGVAR(FRIES), objNull];
if !(isNull _fries) then {
    _fries animate ["extendHookRight", 0];
    _fries animate ["extendHookLeft", 0];
};

0
