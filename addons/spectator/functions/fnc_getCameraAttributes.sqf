/*
 * Author: SilentSpike
 * Returns the current spectator camera attributes (see setCameraAttributes for details).
 *
 * Arguments:
 * None
 *
 * Return Value:
 * [Mode, Focus, Vision, Position, Direction] <ARRAY>
 *
 * Example:
 * [] call ace_spectator_fnc_getCameraAttributes
 *
 * Public: Yes
 */

#include "script_component.hpp"

if !(isNil QGVAR(camera)) then {
    [GVAR(camMode), GVAR(camTarget), GVAR(camVision), getPosATL GVAR(camera), getDirVisual GVAR(camera)]
} else {
    // These values could be pre-set by function
    [
        GETMVAR(GVAR(camMode),0),
        GETMVAR(GVAR(camTarget),objNull),
        GETMVAR(GVAR(camVision),-2),
        GETMVAR(GVAR(camPos),[ARR_3(0,0,0)]),
        GETMVAR(GVAR(camDir),0)
    ]
};
