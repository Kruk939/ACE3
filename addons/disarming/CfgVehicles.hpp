class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_Actions {
            class ACE_MainActions {
                class ACE_DisarmInventory {
                    displayName = CSTRING(OpenInventory);
                    distance = 3.5;
                    condition = QUOTE([ARR_2(_player,_target)] call FUNC(canPlayerDisarmUnit));
                    statement = QUOTE([ARR_2(_player,_target)] call FUNC(openDisarmTimer));
                    exceptions[] = {"isNotSwimming"};
                    icon = QPATHTOF(UI\disarm.paa);
                };
                class ACE_DisarmZiptiedInventory {
                    displayName = CSTRING(OpenInventory);
                    distance = 3.5;
                    condition = QUOTE([ARR_2(_player,_target)] call FUNC(canPlayerDisarmZiptiedUnit));
                    statement = QUOTE([ARR_2(_player,_target)] call FUNC(openDisarmDTimer));
                    exceptions[] = {"isNotSwimming"};
                    icon = QPATHTOF(UI\disarm.paa);
                };
            };
        };
    };
};
