/*
 * Author: commy2
 * Check if the unit can unload a captive from the vehicle.
 *
 * Arguments:
 * 0: Unit that wants to unload a captive (player) <OBJECT>
 * 1: A captive loaded in a vehicle <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [player, bob] call ACE_captives_fnc_canUnloadCaptive;
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_player", "_unit"];
//if (!("ACE_HandcuffsKey" in (items _unit))) exitwith {false};
(vehicle _unit) != _unit &&
{"ACE_HandcuffsKey" in (items _player)} &&
{_unit getVariable [QGVAR(isHandcuffed), false]}

/*
(GVAR(allowHandcuffOwnSide) || {(side _unit) != (side _target)}) &&
{"ACE_Handcuffs" in (items _unit)} &&
{alive _target} &&
{!(_target getVariable [QGVAR(isHandcuffed), false])} &&
{!(_target getVariable [QGVAR(isZiptied), false])} &&
{
    (_target getVariable ["ACE_isUnconscious", false]) || //isUnconscious
//    {[_target] call EFUNC(common,isPlayer)} || //is an AI (not a player)
//    {GVAR(requireSurrender) == 1} || //or don't require surrendering
    {_target getVariable [QGVAR(isSurrendering), false]} //or is surrendering
//    {(GVAR(requireSurrender) == 2) && {(currentWeapon _target) == ""}} //or "SurrenderOrNoWeapon" and no weapon
}
