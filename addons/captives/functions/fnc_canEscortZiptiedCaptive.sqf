/*
 * Author: Nitelite
 * Tests if can escort target (attach)
 *
 * Arguments:
 * 0: caller (player) <OBJECT>
 * 1: target <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [player, bob] call ACE_captives_fnc_canEscortZiptiedCaptive
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_target"];
//Alive, ziptied, not being escorted, and not unconscious

(_target getVariable [QGVAR(isZiptied), false]) &&
{isNull (attachedTo _target)} &&
{alive _target} &&
{!(_target getVariable ["ACE_isUnconscious", false])} &&
{(vehicle _unit) == _unit} &&
{(vehicle _target) == _target}
