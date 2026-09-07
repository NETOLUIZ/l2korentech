USE acis;

-- Buffer NPC (50008, Tryskell) at every race/class newbie starting spot,
-- so new characters have access to buffs right after creation.
-- Coordinates match the <spawns> points in data/xml/classes/*.xml.
INSERT INTO spawnlist (npc_templateid, locx, locy, locz, heading, respawn_delay, respawn_rand, periodOfDay) VALUES
(50008, -71338, 258271, -3104, 0, 60, 0, 0), -- Human Fighter start
(50008, -90875, 248162, -3570, 0, 60, 0, 0), -- Human Mystic start
(50008, 46045, 41251, -3440, 0, 60, 0, 0),   -- Elf start
(50008, 28295, 11063, -4224, 0, 60, 0, 0),   -- Dark Elf start
(50008, -56733, -113459, -690, 0, 60, 0, 0), -- Orc start
(50008, 108644, -173947, -400, 0, 60, 0, 0); -- Dwarf start
