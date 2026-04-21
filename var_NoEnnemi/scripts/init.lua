DEBUG = true
ENABLE_DEBUG_LOG = DEBUG

Tracker:AddItems("items/upgrade.json")
Tracker:AddItems("items/function.json")
Tracker:AddItems("items/key.json")
Tracker:AddItems("items/vessel.json")
Tracker:AddItems("items/boss.json")

Tracker:AddMaps("maps/maps.json")

ScriptHost:LoadScript("scripts/import_locations.lua")

Tracker:AddLayouts("layouts/item_grid.json")
Tracker:AddLayouts("layouts/maps.json")
Tracker:AddLayouts("layouts/tracker.json")

-- Chargement de l'auto-tracking Archipelago
if Archipelago ~= nil then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end