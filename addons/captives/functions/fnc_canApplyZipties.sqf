/*
 * Author: Nitelite
 * Checks the conditions for being able to apply Zipties
 *
 * Arguments:
 * 0: caller (player) <OBJECT>
 * 1: target <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [player, bob] call ACE_captives_fnc_canApplyZipties
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_target"];
//Check sides, Player has Zipties, target is alive and not already handcuffed/ziptied

(GVAR(allowHandcuffOwnSide) || {(side _unit) != (side _target)}) &&
{"ACE_CableTie" in (items _unit)} &&
{alive _target} &&
{!(_target getVariable [QGVAR(isHandcuffed), false])} &&
{!(_target getVariable [QGVAR(isZiptied), false])} &&
{_target getVariable [QGVAR(isSurrendering), false]}  //or is surrendering
