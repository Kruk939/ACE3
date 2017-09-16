#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {QGVAR(ModuleSettings), QGVAR(ModuleSurrender), QGVAR(ModuleHandcuffed), QGVAR(ModuleZiptied)};
        weapons[] = {"ACE_CableTie","ACE_Handcuffs","ACE_Handcuffskey"};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ACE_Interaction"};
        author = ECSTRING(common,ACETeam);
        authors[] = {"commy2", "KoffeinFlummi","Nitelite"};
        url = ECSTRING(main,URL);
        VERSION_CONFIG;
    };
};

#include "ACE_Settings.hpp"
#include "CfgEventHandlers.hpp"
#include "CfgMoves.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "CfgEden.hpp"
