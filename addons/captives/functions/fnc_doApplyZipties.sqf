/*
 * Author: Nitelite
 * Checks the conditions for being able to apply handcuffs. Applies animation and 3 second progressbar.
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
#include "script_component.hpp"


params ["_unit", "_target"];

private _onFinish ={
        (_this select 0) params ["_unit", "_target"];
        _unit removeItem "ACE_CableTie";
        playSound3D [QUOTE(PATHTO_R(sounds\cable_tie_zipping.ogg)), objNull, false, (getPosASL _target), 1, 1, 10];
            [QGVAR(setZiptied), [_target, true], [_target]] call CBA_fnc_targetEvent;
};

private _onFailure = {
        (_this select 0) params ["_unit", "_target"];
        [_unit, "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon", 1] call EFUNC(common,doAnimation);
};

[_unit, "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon", 0] call EFUNC(common,doAnimation);

[3, [_unit, _target], _onFinish, _onFailure, ("Restraining"), {(_this select 0) call FUNC(canApplyZipties)}] call EFUNC(common,progressBar);
