-- ============================================================
-- Auto-Tab Mapping : section prefix → onglets du tracker
-- ============================================================
-- Change automatiquement d'onglet sur la map quand une location
-- est cochée, en déduisant la zone depuis le code de section.
--
-- Format AUTOTAB_PREFIX_MAP :
--   ["prefix"] = { outer_tab_title, inner_tab_title }
--
-- Format AUTOTAB_LOCATION_ID_MAP (surcharge par location_id) :
--   [location_id] = { outer_tab_title, inner_tab_title }
--
-- Ajouter des entrées au fur et à mesure que de nouvelles zones
-- sont créées dans location_mapping.lua.
-- ============================================================

-- Mapping par préfixe de code de section
AUTOTAB_PREFIX_MAP = {
    -- Ch01
    ["@KCS Plaza - Locations/"]                           = { "Ch01",       "KCSP"            },
    ["@KCS - Locations/"]                                 = { "Ch01",       "KCS"             },
    -- Ch02
    ["@Elysion Boulevard Alchemist Bridge - Locations/"]  = { "Ch02",       "EB: Alchemist Bridge" },
    ["@Elysion Boulevard - Locations/"]                   = { "Ch02",       "EB"              },
    ["@Krat City Hall - Locations/"]                      = { "Ch02",       "KCH"             },
    -- Ch03
    ["@Workshop Union Entrance - Locations/"]             = { "Ch03",       "WUE"             },
    ["@Venigni's Workshop - Locations/"]                  = { "Ch03",       "VW"              },
    ["@Workshop Union Culvert - Locations/"]              = { "Ch03",       "VW - Culvert"    },
    ["@Venigni Works Control Room - Locations/"]          = { "Ch03",       "VW - Control Room" },
    -- Ch04
    ["@MoonLight Town - Locations/"]                      = { "Ch04",       "MT"              },
    ["@Path of Misery - Locations/"]                      = { "Ch04",       "POM"             },
    ["@St. Frangelico Cathedral Chapel - Locations/"]     = { "Ch04",       "SFCC"            },
    ["@St. Frangelico Cathedral Library - Locations/"]    = { "Ch04",       "SFCC - Library"  },
    -- Hotel Krat
    ["@Hotel Krat Entrance - Locations/"]                 = { "Hotel Krat", "Entrance"        },
    ["@Hotel Krat Main Floor - Locations/"]               = { "Hotel Krat", "Main Floor"      },
    ["@Hotel Krat Upper Floor - Locations/"]              = { "Hotel Krat", "Upper Floor"     },
}

-- Surcharge par location_id (utile quand plusieurs floors partagent le même préfixe)
-- Hotel Krat Ch01 (IDs 29, 79, 283) → tous en Main Floor pour l'instant
AUTOTAB_LOCATION_ID_MAP = {
    [ 29] = { "Hotel Krat", "Main Floor"  },   -- Table near Antonia
    [ 79] = { "Hotel Krat", "Main Floor"  },   -- Geppetto (post Scrapped Watchman)
    [283] = { "Hotel Krat", "Main Floor"  },   -- Antonia - Rosa Isabelle Street Key
}

-- Dernière zone active (évite de changer l'onglet inutilement)
_lastAutoTabKey = nil

-- Détermine les onglets à activer pour un code de section donné
local function getTabsForCode(location_code)
    -- Cherche d'abord dans les préfixes
    for prefix, tabs in pairs(AUTOTAB_PREFIX_MAP) do
        if location_code:sub(1, #prefix) == prefix then
            return tabs
        end
    end
    return nil
end

-- Appelé depuis onLocation pour switcher l'onglet de carte
-- location_id  : identifiant numérique AP de la location (peut être nil)
-- location_code: code de section, ex. "@KCS - Locations/Bench outside train"
function doAutoTab(location_id, location_code)
    print(string.format("[AutoTab] called: id=%s code=%s", tostring(location_id), tostring(location_code)))

    local tabs = nil

    -- Surcharge par location_id en priorité
    if location_id then
        tabs = AUTOTAB_LOCATION_ID_MAP[location_id]
    end

    -- Fallback : déduction depuis le préfixe du code de section
    if not tabs and location_code then
        tabs = getTabsForCode(location_code)
    end

    if not tabs then
        print(string.format("[AutoTab] no mapping found for id=%s code=%s", tostring(location_id), tostring(location_code)))
        return
    end

    -- Clé unique pour éviter les appels redondants
    local tabKey = tabs[1] .. "|" .. tabs[2]
    if tabKey == _lastAutoTabKey then
        print(string.format("[AutoTab] already on '%s', skipping", tabKey))
        return
    end
    _lastAutoTabKey = tabKey

    print(string.format("[AutoTab] switching to: '%s' > '%s'", tabs[1], tabs[2]))

    -- Vérifie que UiHint est disponible (dispo depuis PopTracker 0.11.0)
    if type(Tracker.UiHint) ~= "function" then
        print("[AutoTab] ERROR: Tracker.UiHint is not available in this PopTracker version!")
        return
    end

    -- Activation de l'onglet externe puis interne
    Tracker:UiHint("ActivateTab", tabs[1])
    print(string.format("[AutoTab] sent ActivateTab '%s'", tabs[1]))
    Tracker:UiHint("ActivateTab", tabs[2])
    print(string.format("[AutoTab] sent ActivateTab '%s'", tabs[2]))
end
