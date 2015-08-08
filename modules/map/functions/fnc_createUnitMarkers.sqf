/**
 *
 */

#include "script_macros.hpp"

private[
    "_units",
    "_side",
    "_name",
    "_marker"
];

_name = name player;
_side = side player;

while {alive player} do {
    {
        _marker = name _x;

        if (getMarkerColor _marker == "") then {
            _marker = createMarkerLocal [name _x, getPos _x];
            _marker setMarkerShapeLocal "Icon";
            _marker setMarkerTypeLocal "mil_triangle_noShadow";
            _marker setMarkerDirLocal (getDir _x);

            if(side _x == _side) then {
                if(name _x == _name) then {
                    _marker setMarkerColorLocal "ColorYellow";
                } else {
                    _marker setMarkerColorLocal "ColorWEST";
                };
            };
        };

        _marker setMarkerPosLocal (getPos _x);
        _marker setMarkerDirLocal (getDir _x);
    } forEach allUnits;

    uiSleep 1;
};