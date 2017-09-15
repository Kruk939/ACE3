/*
 * Author: PabstMirror
 * Checks the conditions for being able to remove handcuffs
 *
 * Arguments:
 * 0: caller (player) <OBJECT>
 * 1: target <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [player, bob] call ACE_captives_fnc_canRemoveZipties
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_target"];

//Unit is handcuffed and not currently being escorted
_target getVariable [QGVAR(isZiptied), false] &&
{isNull (attachedTo _target)} &&
{(vehicle _target) == _target}
