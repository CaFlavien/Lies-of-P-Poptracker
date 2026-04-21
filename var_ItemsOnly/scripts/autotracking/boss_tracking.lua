-- ============================================================
-- Boss Tracking : détecte automatiquement la défaite d'un boss
-- ============================================================
-- Le mod LiesOfAP n'envoie pas d'event "boss tué" directement.
-- On considère un boss comme vaincu quand TOUS ses drops de
-- location ont été cochés par le joueur.
--
-- Usage dans access_rules : ["boss_parade_master"] etc.
-- ============================================================

-- IDs AP des locations de drops de chaque boss
BOSS_DROP_IDS = {
    ["boss_parade_master"]        = { 23, 24 },
    ["boss_scrapped_watchman"]    = { 73, 74, 75, 76, 77 },
    ["boss_fuoco"]                = { 145, 146, 147 },
    ["boss_andreus"]              = { 212 },
    ["boss_black_rabbit"]         = { 277 },
    ["boss_romeo"]                = { 346, 347, 348 },
    ["boss_victor"]               = { 420 },
    ["boss_green_monster"]        = { 50, 501 },
    ["boss_black_rabbit_2"]       = { 608 },
    ["boss_laxasia"]              = { 707 },
    ["boss_simon_manus"]          = { 740, 741 },
    ["boss_nameless_puppet"]      = { 742 },
    ["boss_tyrannical_predator"]  = { 802 },
    ["boss_markiona"]             = { 815, 816 },
    ["boss_anguished_guardian"]   = { 973 },
    ["boss_lumacchio"]            = { 1009, 1010 },
    ["boss_arlecchino"]           = { 1099, 1100, 1101, 1102 },
}

-- Index inverse : location_id → liste des boss à vérifier quand cet ID est coché
-- (précalculé au chargement pour éviter de tout parcourir à chaque check)
LOCATION_TO_BOSSES = {}
for boss_code, drop_ids in pairs(BOSS_DROP_IDS) do
    for _, loc_id in ipairs(drop_ids) do
        if not LOCATION_TO_BOSSES[loc_id] then
            LOCATION_TO_BOSSES[loc_id] = {}
        end
        table.insert(LOCATION_TO_BOSSES[loc_id], boss_code)
    end
end

-- Ensemble des locations cochées dans la session courante
CHECKED_LOCATIONS = {}

-- Vérifie si un boss est vaincu et met à jour son toggle
local function checkBoss(boss_code)
    local drop_ids = BOSS_DROP_IDS[boss_code]
    if not drop_ids then return end

    for _, loc_id in ipairs(drop_ids) do
        if not CHECKED_LOCATIONS[loc_id] then
            return  -- pas encore tous cochés
        end
    end

    -- Tous les drops sont cochés → boss vaincu
    local obj = Tracker:FindObjectForCode(boss_code)
    if obj then
        if obj.Type == "toggle" and not obj.Active then
            obj.Active = true
        elseif obj.Type == "consumable" and obj.AcquiredCount == 0 then
            obj.AcquiredCount = 1
        end
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
            print(string.format("[BossTracking] Boss defeated: %s", boss_code))
        end
    end
end

-- Appelé depuis onLocation à chaque location cochée
function onBossLocationCheck(location_id)
    CHECKED_LOCATIONS[location_id] = true

    -- Ne vérifie que les boss concernés par cet ID (optimisation)
    local bosses = LOCATION_TO_BOSSES[location_id]
    if bosses then
        for _, boss_code in ipairs(bosses) do
            checkBoss(boss_code)
        end
    end
end

-- Appelé depuis onClear pour remettre à zéro
function resetBossTracking()
    CHECKED_LOCATIONS = {}
    for boss_code, _ in pairs(BOSS_DROP_IDS) do
        local obj = Tracker:FindObjectForCode(boss_code)
        if obj then
            if obj.Type == "toggle" then
                obj.Active = false
            elseif obj.Type == "consumable" then
                obj.AcquiredCount = 0
            end
        end
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print("[BossTracking] reset done")
    end
end
