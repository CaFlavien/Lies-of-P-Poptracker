-- ============================================================
-- Import des locations par chapitre/zone
-- Chaque zone a 2 fichiers :
--   locations/[zone].json        → positions visuelles (x, y sur la map)
--   locations/logics/[zone].json → sections + access_rules
-- ============================================================

-- Ch01 - Krat Central Station
Tracker:AddLocations("locations/ch01_krat_central_station.json")
Tracker:AddLocations("locations/logics/ch01_krat_central_station.json")

-- Ch01 - Krat Central Station Plaza
Tracker:AddLocations("locations/ch01_krat_central_station_plaza.json")
Tracker:AddLocations("locations/logics/ch01_krat_central_station_plaza.json")

-- Hotel Krat (multi-chapitres)
Tracker:AddLocations("locations/hotel_krat_entrance.json")
Tracker:AddLocations("locations/logics/hotel_krat_entrance.json")
Tracker:AddLocations("locations/hotel_krat_main_floor.json")
Tracker:AddLocations("locations/logics/hotel_krat_main_floor.json")
Tracker:AddLocations("locations/hotel_krat_upper_floor.json")
Tracker:AddLocations("locations/logics/hotel_krat_upper_floor.json")

-- Elysion Boulevard
Tracker:AddLocations("locations/ch02_elysion_boulevard.json")
Tracker:AddLocations("locations/logics/ch02_elysion_boulevard.json")

-- Elysion Boulevard - Alchemist Bridge
Tracker:AddLocations("locations/ch02_elysion_boulevard_alchemist_bridge.json")
Tracker:AddLocations("locations/logics/ch02_elysion_boulevard_alchemist_bridge.json")

-- Krat City Hall
Tracker:AddLocations("locations/ch02_krat_city_hall.json")
Tracker:AddLocations("locations/logics/ch02_krat_city_hall.json")
