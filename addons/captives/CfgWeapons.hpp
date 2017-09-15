class CfgWeapons {
    class ACE_ItemCore;
    class CBA_MiscItem_ItemInfo;

    class ACE_CableTie: ACE_ItemCore {
        displayName = CSTRING(CableTie);
        descriptionShort = CSTRING(CableTieDescription);
        model = QPATHTOF(models\ace_cabletie.p3d);
        picture = QPATHTOF(UI\ace_cabletie_ca.paa);
        scope = 2;
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
    };
    class ACE_Handcuffs: ACE_ItemCore {
        displayName = CSTRING(Handcuffs);
        descriptionShort = CSTRING(HandcuffsDescription);
        //model = QPATHTOF(models\ace_cabletie.p3d);
        picture = QPATHTOF(UI\ace_handcuff_ca.paa);
        scope = 2;
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 1;
        };
   };
   class ACE_HandcuffsKey: ACE_ItemCore {
      displayName = CSTRING(HandcuffsKeys);
      descriptionShort = CSTRING(HandcuffsKeysDescription);
      //model = QPATHTOF(models\ace_cabletie.p3d);
      picture = QPATHTOF(UI\ace_handcuff_keys_ca.paa);
      scope = 2;
      class ItemInfo: CBA_MiscItem_ItemInfo {
           mass = 1;
      };
  };
};
