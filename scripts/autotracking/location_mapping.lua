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
    [ 71] = { "@Krat City Hall - Locations/left before Scrapped Watchman" },
    [ 72] = { "@Krat City Hall - Locations/chest before Scrapped Watchman" },
    [ 73] = { "@Krat City Hall - Locations/Overcharged Storage Battery" },
    [ 74] = { "@Krat City Hall - Locations/Broken Hero's Ergo" },
    [ 75] = { "@Krat City Hall - Locations/Core" },
    [ 76] = { "@Krat City Hall - Locations/Quartz" },
    [ 77] = { "@Krat City Hall - Locations/Small Wooden Officer Puppet" },
    [ 78] = { "@Krat City Hall - Locations/Venigni's Guide" },

    -- =========================================================
    -- Workshop Union Entrance (IDs 80-88)
    -- =========================================================
    [ 80] = { "@Workshop Union Entrance - Locations/wagon after opening door" },
    [ 81] = { "@Workshop Union Entrance - Locations/left side before roofs" },
    [ 82] = { "@Workshop Union Entrance - Locations/red rooftop" },
    [ 83] = { "@Workshop Union Entrance - Locations/ladder from red rooftops, down" },
    [ 84] = { "@Workshop Union Entrance - Locations/dead-end down ladder from red rooftops" },
    [ 85] = { "@Workshop Union Entrance - Locations/destructible boxes at a side path" },
    [ 86] = { "@Workshop Union Entrance - Locations/destructible boxes before bridge" },
    [ 87] = { "@Workshop Union Entrance - Locations/destructible boxes by the phone riddle" },
    [ 88] = { "@Workshop Union Entrance - Locations/staircase after bridge" },

    -- =========================================================
    -- Venigni's Workshop (IDs 89-147)
    -- =========================================================
    [ 89] = { "@Venigni's Workshop - Locations/near Workshop Union Entrance stargazer" },
    [ 90] = { "@Venigni's Workshop - Locations/upstairs from Workshop Union Entrance stargazer" },
    [ 91] = { "@Venigni's Workshop - Locations/safe after a dropdown" },
    [ 92] = { "@Venigni's Workshop - Locations/behind where the floor can fall" },
    [ 93] = { "@Venigni's Workshop - Locations/chest inside the warehouse" },
    [ 94] = { "@Venigni's Workshop - Locations/left side warehouse" },
    [ 95] = { "@Venigni's Workshop - Locations/warehouse upper area" },
    [ 96] = { "@Venigni's Workshop - Locations/corner before Shield Puppet" },
    [ 97] = { "@Workshop Union Culvert - Locations/Legion Caliber" },
    [ 98] = { "@Workshop Union Culvert - Locations/Hidden Moonstone - Duel Shield" },
    [ 99] = { "@Workshop Union Culvert - Locations/Red Butterfly drop" },
    [100] = { "@Workshop Union Culvert - Locations/after Red Butterfly" },
    [101] = { "@Workshop Union Culvert - Locations/pipe by the Workshop Union Culvert stargazer" },
    [102] = { "@Workshop Union Culvert - Locations/corruption swamp, right side" },
    [103] = { "@Workshop Union Culvert - Locations/corruption swamp, across from pipe" },
    [104] = { "@Workshop Union Culvert - Locations/corruption swamp, ambush" },
    [105] = { "@Workshop Union Culvert - Locations/corruption swamp, Red Butterfly drop" },
    [106] = { "@Workshop Union Culvert - Locations/corruption swamp dead-end, right" },
    [107] = { "@Workshop Union Culvert - Locations/corruption swamp dead-end, left" },
    [108] = { "@Workshop Union Culvert - Locations/rolling fireball entrance" },
    [109] = { "@Workshop Union Culvert - Locations/rolling fireball dead-end" },
    [110] = { "@Workshop Union Culvert - Locations/rolling fireball shortcut" },
    [111] = { "@Workshop Union Culvert - Locations/dead-end near Survivor exit" },
    [112] = { "@Workshop Union Culvert - Locations/ladder shortcut to Puppet of the Future" },
    [113] = { "@Workshop Union Culvert - Locations/rolling fireball chest" },
    [114] = { "@Workshop Union Culvert - Locations/near puppet that smashes a wall" },
    [115] = { "@Workshop Union Culvert - Locations/beside Black Cat and Red Fox" },
    [116] = { "@Workshop Union Culvert - Locations/oposite red pipe before Shovel enemy" },
    [117] = { "@Workshop Union Culvert - Locations/ladder shortcut by first Trinity Key door" },
    [118] = { "@Workshop Union Culvert - Locations/Blue Blood's Tailcoat" },
    [119] = { "@Workshop Union Culvert - Locations/Quartz - Trinity Key" },
    [120] = { "@Workshop Union Culvert - Locations/red pipe drop down" },
    [121] = { "@Workshop Union Culvert - Locations/Swordsmanship Master's Amulet" },
    [122] = { "@Workshop Union Culvert - Locations/Hidden Moonstone - Shovel elite" },
    [123] = { "@Workshop Union Culvert - Locations/beside lever to drain the decay" },
    [124] = { "@Venigni's Workshop - Locations/room upstairs next to the hanging puppets" },
    [125] = { "@Venigni's Workshop - Locations/beneath the hanging puppets" },
    [126] = { "@Venigni's Workshop - Locations/upstairs next to the hanging puppets" },
    [127] = { "@Workshop Union Culvert - Locations/Survivor's Hunting Apparel" },
    [128] = { "@Workshop Union Culvert - Locations/Survivor's Mask" },
    [129] = { "@Venigni's Workshop - Locations/other side of pipe shortcut" },
    [130] = { "@Workshop Union Culvert - Locations/Quartz - Puppets of the Future" },
    [131] = { "@Workshop Union Culvert - Locations/Radiant Ergo Chunk" },
    [132] = { "@Workshop Union Culvert - Locations/Puppet of the Future arena pickup 1" },
    [133] = { "@Workshop Union Culvert - Locations/Puppet of the Future arena pickup 2" },
    [134] = { "@Workshop Union Culvert - Locations/Puppet of the Future arena pickup 3" },
    [135] = { "@Workshop Union Culvert - Locations/Puppet of the Future arena chest" },
    [136] = { "@Venigni Works Control Room - Locations/lower right platform near Shovel elite" },
    [137] = { "@Venigni Works Control Room - Locations/upstairs towards Venigni" },
    [138] = { "@Venigni Works Control Room - Locations/on metal beams towards Fuoco" },
    [139] = { "@Venigni Works Control Room - Locations/upper left platform near Venigni" },
    [140] = { "@Venigni Works Control Room - Locations/upper right platform near Venigni" },
    [141] = { "@Venigni Works Control Room - Locations/jump on the metal beams" },
    [142] = { "@Venigni Works Control Room - Locations/lower right platform near Venigni" },
    [143] = { "@Venigni Works Control Room - Locations/Workshop Union Standard Radiation Converter" },
    [144] = { "@Venigni Works Control Room - Locations/Hidden Moonstone" },
    [145] = { "@Venigni Works Control Room - Locations/High-powered Flame Amplifier" },
    [146] = { "@Venigni Works Control Room - Locations/King's Flame Ergo" },
    [147] = { "@Venigni Works Control Room - Locations/Flame Grindstone" },
    
