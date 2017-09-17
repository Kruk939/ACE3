/*
 * Author: Nitelite
 *
 * Starts timer with progressbar for opening target inventory.
 *
 * Arguments:
 * 0: Caller (player) <OBJECT>
 * 1: Target <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, bob] call ace_disarming_fnc_openDisarmDialog
 *
 * Public: No
 */
#include "script_component.hpp"
params ["_unit", "_target"];

private _onFinish ={
        (_this select 0) params ["_unit", "_target"];
        [_unit, _target] call ace_disarming_fnc_openDisarmDialog;
        [_unit, "AmovPknlMstpSrasWrflDnon", 1] call EFUNC(common,doAnimation);
};

private _onFailure = {
        (_this select 0) params ["_unit", "_target"];
        [_unit, "AmovPknlMstpSrasWrflDnon", 1] call EFUNC(common,doAnimation);
};

[_unit, "AinvPknlMstpSnonWnonDr_medic5", 0] call EFUNC(common,doAnimation);

[10, [_unit, _target], _onFinish, _onFailure, ("Putting On Cuffs"), {(_this select 0) call FUNC(canPlayerDisarmUnit)}] call EFUNC(common,progressBar);
