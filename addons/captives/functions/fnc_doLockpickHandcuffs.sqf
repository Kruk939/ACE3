/*
 * Author: PabstMirror
 * Remove handcuffs from a target
 *
 * Arguments:
 * 0: target <OBJECT>
 *
 * Return Value:
 * The return value <BOOL>
 *
 * Example:
 * [bob, false] call ACE_captives_fnc_doRemoveHandcuffs
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit", "_target"];
private ["_value","_random","_onFinish"];
_unit addItem "ACE_Handcuffs";
[QGVAR(setHandcuffed), [_target, false], [_target]] call CBA_fnc_targetEvent;

_value = 5;
_random = round(random 10);


if (_value > _random) then {
private _onFinish = {
        (_this select 0) params ["_unit", "_target"];
        _unit removeItem "ACE_Lockpick";
        playSound3D [QUOTE(PATHTO_R(sounds\handcuffs.ogg)), objNull, false, (getPosASL _target), 1, 1, 10];
            [QGVAR(setHandcuffed), [_target, false], [_target]] call CBA_fnc_targetEvent;
        [_unit, "AmovPknlMstpSrasWrflDnon", 1] call EFUNC(common,doAnimation);
};
}else{
private _onFinish = {
        (_this select 0) params ["_unit", "_target"];
        _unit removeItem "ACE_Lockpick";
        [_unit, "AmovPknlMstpSrasWrflDnon", 1] call EFUNC(common,doAnimation);
        ["Lockpicking failed!", true, 5, 0] call ace_common_fnc_displayText;
    };
};

private _onFailure = {
        (_this select 0) params ["_unit", "_target"];
        [_unit, "AmovPknlMstpSrasWrflDnon", 1] call EFUNC(common,doAnimation);
};

[_unit, "AinvPknlMstpSnonWnonDr_medic5", 0] call EFUNC(common,doAnimation);

[10, [_unit, _target], _onFinish, _onFailure, ("Lockpicking Handcuffs"), {(_this select 0) call FUNC(canLockpickHandcuffs)}] call EFUNC(common,progressBar);
