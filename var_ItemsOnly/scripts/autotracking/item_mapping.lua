-- ============================================================
-- Item Mapping : Archipelago item_id → code tracker
-- ============================================================
-- IDs sources : https://github.com/Xtruh/LiesOfAP/blob/main/LiesOfAP/src/IDs.cpp
--
-- Format : [archipelago_item_id] = { "tracker_code", "item_type", multiplier }
--   item_type : "toggle", "consumable", "progressive", "progressive_toggle"
--   multiplier : optionnel, défaut = 1
-- ============================================================

ITEM_MAPPING = {

    -- =========================================================
    -- UPGRADE MATERIALS (consumable)
    -- Chaque réception incrémente le compteur de 1
    -- =========================================================

    -- Reinforce_Blade_Common (moonstones standards)
    [304] = { "moonstone_hidden",           "consumable", 1 },  -- Reinforce_Blade_Common_G1
    [305] = { "moonstone_cresent",          "consumable", 1 },  -- Reinforce_Blade_Common_G2
    [306] = { "moonstone_half",             "consumable", 1 },  -- Reinforce_Blade_Common_G3
    [307] = { "moonstone_full",             "consumable", 1 },  -- Reinforce_Blade_Common_G4

    -- Reinforce_Hero (moonstones of the covenant)
    [308] = { "moonstone_covenant",         "consumable", 1 },  -- Reinforce_Hero_G1
    [309] = { "moonstone_full_covenant",    "consumable", 1 },  -- Reinforce_Hero_G2

    -- Quartz (P-Organ upgrades)
    [315] = { "quartz",                     "consumable", 1 },  -- quartz

    -- =========================================================
    -- FUNCTION ITEMS (toggle)
    -- S'activent une seule fois (on/off)
    -- =========================================================

    -- Venigni Collections
    [105] = { "fancy_vc",                   "toggle", 1 },      -- Venigni_BlackBox_2
    [102] = { "great_vc",                   "toggle", 1 },      -- Venigni_BlackBox_3
    [103] = { "incredible_vc",              "toggle", 1 },      -- Venigni_BlackBox_4

    -- Outils d'assemblage
    [101] = { "enigma_assembly_tool",       "toggle", 1 },      -- Weapon_combine
    [104] = { "grinder_mod_tool",           "toggle", 1 },      -- Grinder_Unit_Unlock

    -- Krat Supply Boxes
    [106] = { "krat_supply_box",            "toggle", 1 },      -- Krat_BlackBox_2
    [107] = { "sturdy_supply_box",          "toggle", 1 },      -- Krat_BlackBox_3
    [108] = { "special_supply_box",         "toggle", 1 },      -- Krat_BlackBox_4

    -- =========================================================
    -- CLÉS — Jeu de base (IDs 1-14)
    -- Ordre d'obtention dans une partie classique
    -- ⚠️ = mapping incertain, à confirmer avec le mod
    -- =========================================================

    -- Obligatoires (progression principale)
    [1]  = { "key_central_station",    "consumable", 1 },  -- Key_1
    [2]  = { "key_cityhall",           "consumable", 1 },  -- Epic_key_cityhall
    [3]  = { "key_cityhall_courtyard", "consumable", 1 },  -- Epic_key_ftr
    [4]  = { "key_cable_railway",      "consumable", 1 },  -- Epic_key_cath_funicular ⚠️
    [6]  = { "key_rosa_isabelle",      "consumable", 1 },  -- Epic_key_hotel_to_cult
    [11]  = { "key_arcade_1f",          "consumable", 1 },  -- Epic_key_arcadecross 
    [12] = { "key_arcade_underground", "consumable", 1 },  -- Epic_key_arcade_tunnel
    [8] = { "key_alchemist_badge",    "consumable", 1 },  -- Epic_key_Monastery_entry
    [13]  = { "key_arche_abbey",        "consumable", 1 },  -- Epic_key_MonasteryB_6F

    -- Optionnels
    [5]  = { "key_slum_shack",         "consumable", 1 },  -- Epic_key_SlumHouse
    [7] = { "key_saintess_gallery",   "consumable", 1 },  --  Epic_key_pieta
    [9]  = { "key_trinity",            "consumable", 1 },  -- Epic_key_riddle (Trinity Key)
    [10] = { "key_chosen_trinity",     "consumable", 1 },      -- Epic_key_riddle_final (The Chosen Ones Trinity Key)
    [14] = { "key_dottedpaper_room",   "consumable", 1 },  -- Epic_key_dottedpaper

    -- =========================================================
    -- CRYPTIC VESSELS (toggle) — IDs 1501-1506
    -- ⚠️ L'ordre AP ≠ ordre numérique du suffixe
    -- =========================================================

    [1501] = { "cv_dottedpaper_06",  "toggle", 1 },  -- Collection_Dottedpaper_06
    [1502] = { "cv_dottedpaper_01",  "toggle", 1 },  -- Collection_Dottedpaper_01
    [1503] = { "cv_dottedpaper_02",  "toggle", 1 },  -- Collection_Dottedpaper_02
    [1504] = { "cv_dottedpaper_05",  "toggle", 1 },  -- Collection_Dottedpaper_05
    [1505] = { "cv_dottedpaper_03",  "toggle", 1 },  -- Collection_Dottedpaper_03
    [1506] = { "cv_dottedpaper_04",  "toggle", 1 },  -- Collection_Dottedpaper_04

    -- =========================================================
    -- CLÉS DLC — commentées, tracker base game uniquement
    -- =========================================================

    -- [2001] = { "dlc_godtear",              "toggle", 1 },  -- DLC_GodTear
    -- [2002] = { "dlc_key_zoo_play",         "toggle", 1 },  -- Epic_key_zoo_play
    -- [2003] = { "dlc_key_zoo_tram",         "toggle", 1 },  -- Epic_key_zoo_tram
    -- [2004] = { "dlc_key_rabbit",           "toggle", 1 },  -- Epic_key_rabbit
    -- [2005] = { "dlc_key_lab_monad",        "toggle", 1 },  -- Epic_key_lab_monad
    -- [2006] = { "dlc_key_lab_control_room", "toggle", 1 },  -- Epic_key_lab_control_room
    -- [2007] = { "dlc_key_ruin_bossroom",    "toggle", 1 },  -- Epic_key_ruin_BossRoom
    -- [2008] = { "dlc_key_rosegarden",       "toggle", 1 },  -- Epic_key_RoseGarden
    -- [2009] = { "dlc_key_hotel_vip",        "toggle", 1 },  -- Epic_key_hotel_VIP
    -- [2010] = { "dlc_key_sea_fisherman",    "toggle", 1 },  -- Epic_key_sea_Fisherman

}
