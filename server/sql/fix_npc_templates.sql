-- Script corrigido com IDs C1 100% compativeis com qualquer cliente de Lineage 2
-- Utiliza apenas NPCs base de Talking Island / C1 (Lector, Silvia, Roxxy, Biotin, Leon, Roy the Cat)

UPDATE `custom_npc` SET `idTemplate` = 30003 WHERE `id` = 7100;    -- Adena Trader -> Silvia (Trader FHuman)
UPDATE `custom_npc` SET `idTemplate` = 30005 WHERE `id` = 33006;   -- Banco de Adenas -> Wilford (Warehouse Keeper)
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 40010;   -- Tatoo Black -> Lector (Trader MHuman)
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 41001;   -- Argumentation -> Lector (Trader MHuman)
UPDATE `custom_npc` SET `idTemplate` = 30031 WHERE `id` = 50000;   -- TOFIZ Buffer -> High Priest Biotin
UPDATE `custom_npc` SET `idTemplate` = 30031 WHERE `id` = 50001;   -- Rayan Buffer -> High Priest Biotin
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 50002;   -- GM Shop -> Trader Lector
UPDATE `custom_npc` SET `idTemplate` = 30006 WHERE `id` = 50003;   -- Luxury GateKeeper -> Gatekeeper Roxxy
UPDATE `custom_npc` SET `idTemplate` = 30005 WHERE `id` = 50004;   -- Craft Manager -> Warehouse Keeper Wilford
UPDATE `custom_npc` SET `idTemplate` = 30031 WHERE `id` = 50005;   -- Summon Buffer -> High Priest Biotin
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 50006;   -- Gustaff Mercenary -> Trader Lector
UPDATE `custom_npc` SET `idTemplate` = 30031 WHERE `id` = 50007;   -- Donator Buffer -> High Priest Biotin
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 50008;   -- Nikki unsealer -> Trader Lector
UPDATE `custom_npc` SET `idTemplate` = 30031 WHERE `id` = 50009;   -- Donator Summon Buffer -> High Priest Biotin
UPDATE `custom_npc` SET `idTemplate` = 31228 WHERE `id` = 50010;   -- TvT Manager -> Roy the Cat
UPDATE `custom_npc` SET `idTemplate` = 30003 WHERE `id` = 50011;   -- Life Stone Mercenary -> Trader Silvia
UPDATE `custom_npc` SET `idTemplate` = 30003 WHERE `id` = 50012;   -- Announcer Manager -> Trader Silvia
UPDATE `custom_npc` SET `idTemplate` = 30003 WHERE `id` = 50013;   -- Jail Manager -> Trader Silvia
UPDATE `custom_npc` SET `idTemplate` = 30003 WHERE `id` = 50014;   -- Raid Event Manager -> Trader Silvia
UPDATE `custom_npc` SET `idTemplate` = 30005 WHERE `id` = 50015;   -- Enchanter -> Warehouse Keeper Wilford
UPDATE `custom_npc` SET `idTemplate` = 30006 WHERE `id` = 50016;   -- Sexy Changer -> Gatekeeper Roxxy
UPDATE `custom_npc` SET `idTemplate` = 30006 WHERE `id` = 50017;   -- PVP/PK Manager -> Gatekeeper Roxxy
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 55555;   -- Shopping S -> Trader Lector
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 66666;   -- Shopping A -> Trader Lector
UPDATE `custom_npc` SET `idTemplate` = 30001 WHERE `id` = 70001;   -- Multshoping -> Trader Lector
UPDATE `custom_npc` SET `idTemplate` = 31228 WHERE `id` = 70004;   -- Event Medals Manager -> Roy the Cat
UPDATE `custom_npc` SET `idTemplate` = 31228 WHERE `id` = 77777;   -- Shopping B -> Roy the Cat
UPDATE `custom_npc` SET `idTemplate` = 31228 WHERE `id` = 88888;   -- Shopping C -> Roy the Cat
UPDATE `custom_npc` SET `idTemplate` = 30040 WHERE `id` = 98687;   -- Helsing Anti-Pk -> Guard Leon
UPDATE `custom_npc` SET `idTemplate` = 31228 WHERE `id` = 300970;  -- Donator Trader -> Roy the Cat
