DELETE creature_ai_scripts
FROM neo_world.creature_ai_scripts
INNER JOIN neo_world.creature_template ON (creature_ai_scripts.creature_id = creature_template.entry)
WHERE (creature_template.ScriptName = 'mobs_mana_tapped' AND creature_ai_scripts.event_type = 8);

INSERT INTO creature_ai_scripts (creature_id, event_type, event_param1, event_param2, action1_type, action1_param1, action1_param2, action1_param3, COMMENT)
SELECT creature_template.entry, 8, 28734, -1, 16, 15468, 28734, 6, CONCAT(creature_template.name, ' - Quest Credit for Casting Arcane Torrent (Quest: 8346)') FROM creature_template WHERE scriptname LIKE 'mobs_mana_tapped' AND flags_extra = 0;

UPDATE creature_template SET scriptname = '' WHERE scriptname LIKE 'mobs_mana_tapped';
