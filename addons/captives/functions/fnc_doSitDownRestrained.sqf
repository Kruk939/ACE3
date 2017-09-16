/*
 * Author: PabstMirror
 * Checks the conditions for being able to apply zipties
 *
 * Arguments:
 * 0: caller (player) <OBJECT>
 * 1: target <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [player, bob] call ACE_captives_fnc_doApplyHandcuffs;
 *
 * Public: No
 */
/*#include "script_component.hpp"


params ["_unit", "_target"];

playSound3D [QUOTE(PATHTO_R(sounds\cable_tie_zipping.ogg)), objNull, false, (getPosASL _target), 1, 1, 10];

[QGVAR(setZiptied), [_target, true], [_target]] call CBA_fnc_targetEvent;

_unit removeItem "ACE_CableTie";

Acts_AidlPsitMstpSsurWnonDnon_loop

Acts_AidlPsitMstpSsurWnonDnon05 //good anim

Acts_AidlPsitMstpSsurWnonDnon_out released

Acts_ExecutionVictim_Loop // on knees
Acts_ExecutionVictim_Unbow // release

UnaErcPoslechVelitele1
UnaErcPoslechVelitele2
UnaErcPoslechVelitele3
UnaErcPoslechVelitele4
