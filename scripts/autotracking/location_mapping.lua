-- ============================================================
-- Location Mapping : Archipelago location_id → code tracker
-- ============================================================
-- IDs sources : https://github.com/Xtruh/LiesOfAP/blob/main/LiesOfAP/src/IDs.cpp
--
-- Format : [archipelago_location_id] = { "@/Map/Zone/Section" }
--   Le préfixe "@" indique une section de map (AvailableChestCount)
--   Sans "@" : item hébergé { "item_code", "item_type" }
--
-- Locations : 1102 au total, réparties sur Ch01-Ch11b + DLC Ch01-Ch05
-- À remplir au fur et à mesure que les sections de map sont créées.
-- ============================================================

LOCATION_MAPPING = {

    -- =========================================================
    -- Ch01 - Krat Central Station (IDs 1-9)
    -- =========================================================
    [  1] = { "@KCS - Locations/Bench outside train" },
    [  2] = { "@KCS - Locations/Bench inside lobby" },
    [  3] = { "@KCS - Locations/Bathroom" },
    [  4] = { "@KCS - Locations/Small room near bar" },
    [  5] = { "@KCS - Locations/Small room with train info board" },
    [  6] = { "@KCS - Locations/Shortcut to station lobby" },
    [  7] = { "@KCS - Locations/Krat Central Station Main Entrance Key" },
    [  8] = { "@KCS - Locations/Workshop Union Lightweight Frame" },
    [  9] = { "@KCS - Locations/Behind Police Puppet" },


    -- =========================================================
    -- Ch01 - Krat Central Station Plaza (IDs 10-24, 343-344)
    -- =========================================================
    [ 10] = { "@KCS Plaza - Locations/Wagon with Puppet Dog on top" },
    [ 11] = { "@KCS Plaza - Locations/Broken wagon" },
    [ 12] = { "@KCS Plaza - Locations/Boxes near broken wagon" },
    [ 13] = { "@KCS Plaza - Locations/Bench near staircase" },
    [ 14] = { "@KCS Plaza - Locations/Locked shortcut gate upstairs" },
    [ 15] = { "@KCS Plaza - Locations/Beside Puppet banging door" },
    [ 16] = { "@KCS Plaza - Locations/Upstairs by rubble cliffside" },
    [ 17] = { "@KCS Plaza - Locations/Destructible barrel in alley" },
    [ 18] = { "@KCS Plaza - Locations/Upstairs before dropdown in alley" },
    [ 19] = { "@KCS Plaza - Locations/Gate at dead-end in alley" },
    [ 20] = { "@KCS Plaza - Locations/Downstairs with Puppet Dog" },
    [ 21] = { "@KCS Plaza - Locations/Training dummy by merchant" },
    [ 22] = { "@KCS Plaza - Locations/Path before Parade Master" },
    [ 23] = { "@KCS Plaza - Locations/Parade Leader's Ergo" },
    [ 24] = { "@KCS Plaza - Locations/Quartz" },
    [343] = { "@KCS Plaza - Locations/The Atoned's Hunting Apparel" },
    [344] = { "@KCS Plaza - Locations/Legion Caliber" },

    -- =========================================================
    -- Hotel Krat (IDs 25-29)
    -- =========================================================
    [ 25] = { "@Hotel Krat Entrance - Locations/wagon near fountain after Parade Master" },
    [ 26] = { "@Hotel Krat Entrance - Locations/wagon near dead-end after Parade Master" },
    [ 27] = { "@Hotel Krat Entrance - Locations/garden before Hotel Krat door" },
    [ 28] = { "@Hotel Krat Entrance - Locations/pile of corpses before Hotel Krat door" },
    [ 29] = { "@Hotel Krat Main Floor - Locations/table near Antonia" },

    -- =========================================================
    -- Elysion Boulevard (IDs 30-61)
    -- =========================================================
    [ 30] = { "@Elysion Boulevard - Locations/bench on lower platform" },
    [ 31] = { "@Elysion Boulevard - Locations/wagon with ambush from above" },
    [ 32] = { "@Elysion Boulevard - Locations/chest before ladder" },
    [ 33] = { "@Elysion Boulevard - Locations/rooftops ladder shortcut" },
    [ 34] = { "@Elysion Boulevard - Locations/rooftops near a red sign" },
    [ 35] = { "@Elysion Boulevard - Locations/corner of room to Brtsto De Krat's roof" },
    [ 36] = { "@Elysion Boulevard - Locations/wooden beam outside Bristo De Krat's rooftop" },
    [ 37] = { "@Elysion Boulevard - Locations/dead-end of Bistro De Krat's roof" },
    [ 38] = { "@Elysion Boulevard - Locations/Bristo De Krat ladder, down" },
    [ 39] = { "@Elysion Boulevard - Locations/shortcut back to the start" },
    [ 40] = { "@Elysion Boulevard - Locations/Bristo De Krat ladder, up to dead-end" },
    [ 41] = { "@Elysion Boulevard - Locations/Bristo De Krat's roof, barrels in a corner" },
    [ 42] = { "@Elysion Boulevard - Locations/Bristo De Krat's roof, small ladder down" },
    [ 43] = { "@Elysion Boulevard - Locations/Bristo De Krat's roof, top near ladder" },
    [ 44] = { "@Elysion Boulevard - Locations/Bristo De Krat's roof, top near a drop down" },
    [ 45] = { "@Elysion Boulevard - Locations/couch" },
    [ 46] = { "@Elysion Boulevard - Locations/in a chest on the roof" },
    [ 47] = { "@Elysion Boulevard - Locations/wooden beam before Red Butterfly" },
    [ 48] = { "@Elysion Boulevard - Locations/top of the roof before Red Butterfly" },
    [ 49] = { "@Elysion Boulevard - Locations/Red Butterfly drop" },
    [ 50] = { "@Elysion Boulevard - Locations/lamp surrounded by dog Puppets" },
    [ 51] = { "@Elysion Boulevard - Locations/wagon near a shortcut" },
    [ 52] = { "@Elysion Boulevard - Locations/small alley in the streets" },
    [ 53] = { "@Elysion Boulevard - Locations/electric trap in alley in the streets" },
    [ 54] = { "@Elysion Boulevard - Locations/wagon in the streets" },
    [ 55] = { "@Elysion Boulevard - Locations/alley with Toma and electric traps" },
    [ 56] = { "@Elysion Boulevard - Locations/chest blocked by electric trap" },
    [ 57] = { "@Elysion Boulevard - Locations/across bridge near Red Butterfly" },
    [ 58] = { "@Elysion Boulevard - Locations/dropped from baton wielding Police Puppet" },
    [ 59] = { "@Elysion Boulevard - Locations/red boxes after Police Puppet" },
    [ 60] = { "@Elysion Boulevard - Locations/Infront of shortcut to Toma" },
    [ 61] = { "@Elysion Boulevard - Locations/electric trap before Mad Donkey" },

    -- =========================================================
    -- Elysion Boulevard Alchemist Bridge (IDs 62-66)
    -- =========================================================
    [ 62] = { "@Elysion Boulevard Alchemist Bridge - Locations/Mad Donkey's Hunting Apparal" },
    [ 63] = { "@Elysion Boulevard Alchemist Bridge - Locations/Mad Donkey's Mask" },
    [ 64] = { "@Elysion Boulevard Alchemist Bridge - Locations/Krat City Hall Key" },
    [ 65] = { "@Elysion Boulevard Alchemist Bridge - Locations/Enigma Assembly Tool" },
    [ 66] = { "@Elysion Boulevard Alchemist Bridge - Locations/wagon at end of the bridge" },

    -- =========================================================
    -- Krat City Hall (IDs 67-78)
    -- =========================================================
    [ 67] = { "@Krat City Hall - Locations/lamp near electric trap" },
    [ 68] = { "@Krat City Hall - Locations/corpse by a wagon" },
    [ 69] = { "@Krat City Hall - Locations/before opening shortcut" },
    [ 70] = { "@Krat City Hall - Locations/after opening shortcut" },
    [ 71] = { "@Krat City Hall - Locations/left before Scapped Watchman" },
    [ 72] = { "@Krat City Hall - Locations/chest before Scrapped Watchman" },
    [ 73] = { "@Krat City Hall - Locations/Overcharged Storage Battery" },
    [ 74] = { "@Krat City Hall - Locations/Broken Hero's Ergo" },
    [ 75] = { "@Krat City Hall - Locations/Core" },
    [ 76] = { "@Krat City Hall - Locations/Quartz" },
    [ 77] = { "@Krat City Hall - Locations/Small Wooden Officer Puppet" },
    [ 78] = { "@Krat City Hall - Locations/after Scrapped Watchman" },

}
