// Define module's name
#define MODULE "caches"

// Load script macros from the main module as it contains essential macros
#include "\mpmissions\ace_rhs_dusty_lair.kunduz\modules\main\functions\script_macros.hpp"

// Defines the needed count of caches which is set by an admin in the
// mission parameters
#define NEEDED_CACHES_COUNT ("NeededCaches" call BIS_fnc_getParamValue)
