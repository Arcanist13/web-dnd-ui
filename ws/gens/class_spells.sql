DROP TABLE artificer_spells;
CREATE TABLE artificer_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE bard_spells;
CREATE TABLE bard_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE cleric_spells;
CREATE TABLE cleric_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE druid_spells;
CREATE TABLE druid_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE paladin_spells;
CREATE TABLE paladin_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE ranger_spells;
CREATE TABLE ranger_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE sorcerer_spells;
CREATE TABLE sorcerer_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE warlock_spells;
CREATE TABLE warlock_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

DROP TABLE wizard_spells;
CREATE TABLE wizard_spells(
	id INTEGER PRIMARY KEY NOT NULL,
	name TEXT NOT NULL
);

-- artificer_spells
-- TCE
INSERT INTO artificer_spells VALUES (NULL, "Acid Splash");          -- 0
INSERT INTO artificer_spells VALUES (NULL, "Booming Blade");
INSERT INTO artificer_spells VALUES (NULL, "Create Bonfire");
INSERT INTO artificer_spells VALUES (NULL, "Dancing Lights");
INSERT INTO artificer_spells VALUES (NULL, "Fire Bolt");
INSERT INTO artificer_spells VALUES (NULL, "Frostbite");
INSERT INTO artificer_spells VALUES (NULL, "Greenflame Blade");
INSERT INTO artificer_spells VALUES (NULL, "Guidance");
INSERT INTO artificer_spells VALUES (NULL, "Light");
INSERT INTO artificer_spells VALUES (NULL, "Lightning Lure");
INSERT INTO artificer_spells VALUES (NULL, "Mage Hand");
INSERT INTO artificer_spells VALUES (NULL, "Magic Stone");
INSERT INTO artificer_spells VALUES (NULL, "Mending");
INSERT INTO artificer_spells VALUES (NULL, "Message");
INSERT INTO artificer_spells VALUES (NULL, "Poison Spray");
INSERT INTO artificer_spells VALUES (NULL, "Prestidigitation");
INSERT INTO artificer_spells VALUES (NULL, "Ray of Frost");
INSERT INTO artificer_spells VALUES (NULL, "Resistance");
INSERT INTO artificer_spells VALUES (NULL, "Shocking Grasp");
INSERT INTO artificer_spells VALUES (NULL, "Spare the Dying");
INSERT INTO artificer_spells VALUES (NULL, "Sword Burst");
INSERT INTO artificer_spells VALUES (NULL, "Thorn Whip");
INSERT INTO artificer_spells VALUES (NULL, "Thunderclap");
INSERT INTO artificer_spells VALUES (NULL, "Absorb Elements");    -- 1
INSERT INTO artificer_spells VALUES (NULL, "Alarm");
INSERT INTO artificer_spells VALUES (NULL, "Catapult");
INSERT INTO artificer_spells VALUES (NULL, "Cure Wounds");
INSERT INTO artificer_spells VALUES (NULL, "Detect Magic");
INSERT INTO artificer_spells VALUES (NULL, "Disguise Self");
INSERT INTO artificer_spells VALUES (NULL, "Expeditious Retreat");
INSERT INTO artificer_spells VALUES (NULL, "Faerie Fire");
INSERT INTO artificer_spells VALUES (NULL, "False Life");
INSERT INTO artificer_spells VALUES (NULL, "Feather Fall");
INSERT INTO artificer_spells VALUES (NULL, "Grease");
INSERT INTO artificer_spells VALUES (NULL, "Identify");
INSERT INTO artificer_spells VALUES (NULL, "Jump");
INSERT INTO artificer_spells VALUES (NULL, "Longstrider");
INSERT INTO artificer_spells VALUES (NULL, "Purify Food and Drink");
INSERT INTO artificer_spells VALUES (NULL, "Sanctuary");
INSERT INTO artificer_spells VALUES (NULL, "Snare");
INSERT INTO artificer_spells VALUES (NULL, "Tasha's Caustic Brew");
INSERT INTO artificer_spells VALUES (NULL, "Aid");          -- 2
INSERT INTO artificer_spells VALUES (NULL, "Alter Self");
INSERT INTO artificer_spells VALUES (NULL, "Arcane Lock");
INSERT INTO artificer_spells VALUES (NULL, "Blur");
INSERT INTO artificer_spells VALUES (NULL, "Continual Flame");
INSERT INTO artificer_spells VALUES (NULL, "Darkvision");
INSERT INTO artificer_spells VALUES (NULL, "Enhance Ability");
INSERT INTO artificer_spells VALUES (NULL, "Enlarge/Reduce");
INSERT INTO artificer_spells VALUES (NULL, "Heat Metal");
INSERT INTO artificer_spells VALUES (NULL, "Invisibility");
INSERT INTO artificer_spells VALUES (NULL, "Lesser Restoration");
INSERT INTO artificer_spells VALUES (NULL, "Levitate");
INSERT INTO artificer_spells VALUES (NULL, "Magic Mouth");
INSERT INTO artificer_spells VALUES (NULL, "Magic Weapon");
INSERT INTO artificer_spells VALUES (NULL, "Protection from Poison");
INSERT INTO artificer_spells VALUES (NULL, "Pyrotechnics");
INSERT INTO artificer_spells VALUES (NULL, "Rope Trick");
INSERT INTO artificer_spells VALUES (NULL, "See Invisibility");
INSERT INTO artificer_spells VALUES (NULL, "Skywrite");
INSERT INTO artificer_spells VALUES (NULL, "Spider Climb");
INSERT INTO artificer_spells VALUES (NULL, "Web");
INSERT INTO artificer_spells VALUES (NULL, "Blink");        -- 3
INSERT INTO artificer_spells VALUES (NULL, "Catnap");
INSERT INTO artificer_spells VALUES (NULL, "Create Food and Water");
INSERT INTO artificer_spells VALUES (NULL, "Dispel Magic");
INSERT INTO artificer_spells VALUES (NULL, "Elemental Weapon");
INSERT INTO artificer_spells VALUES (NULL, "Flame Arrows");
INSERT INTO artificer_spells VALUES (NULL, "Fly");
INSERT INTO artificer_spells VALUES (NULL, "Glyph of Warding");
INSERT INTO artificer_spells VALUES (NULL, "Haste");
INSERT INTO artificer_spells VALUES (NULL, "Intellect Fortress");
INSERT INTO artificer_spells VALUES (NULL, "Protection from Energy");
INSERT INTO artificer_spells VALUES (NULL, "Revivify");
INSERT INTO artificer_spells VALUES (NULL, "Tiny Servant");
INSERT INTO artificer_spells VALUES (NULL, "Water Breathing");
INSERT INTO artificer_spells VALUES (NULL, "Water Walk");
INSERT INTO artificer_spells VALUES (NULL, "Arcane Eye");     -- 4
INSERT INTO artificer_spells VALUES (NULL, "Elemental Bane");
INSERT INTO artificer_spells VALUES (NULL, "Fabricate");
INSERT INTO artificer_spells VALUES (NULL, "Freedom of Movement");
INSERT INTO artificer_spells VALUES (NULL, "Leomund's Secret Chest");
INSERT INTO artificer_spells VALUES (NULL, "Mordenkainen's Faithful Hound");
INSERT INTO artificer_spells VALUES (NULL, "Mordenkainen's Private Sanctum");
INSERT INTO artificer_spells VALUES (NULL, "Otiluke's Resilient Sphere");
INSERT INTO artificer_spells VALUES (NULL, "Stone Shape");
INSERT INTO artificer_spells VALUES (NULL, "Stoneskin");
INSERT INTO artificer_spells VALUES (NULL, "Summon Construct");
INSERT INTO artificer_spells VALUES (NULL, "Animate Pbjects");    -- 5
INSERT INTO artificer_spells VALUES (NULL, "Bigby's Hand");
INSERT INTO artificer_spells VALUES (NULL, "Creation");
INSERT INTO artificer_spells VALUES (NULL, "Greater Restoration");
INSERT INTO artificer_spells VALUES (NULL, "Skill Empowerment");
INSERT INTO artificer_spells VALUES (NULL, "Transmute Rock");
INSERT INTO artificer_spells VALUES (NULL, "Wall of Stone");
-- FTD
INSERT INTO artificer_spells VALUES (NULL, "Ashardalon's Stride");

-- bard_spells SPELLS
-- PHB
INSERT INTO bard_spells VALUES (NULL, "Blade Ward");							-- 0
INSERT INTO bard_spells VALUES (NULL, "Dancing Lights");
INSERT INTO bard_spells VALUES (NULL, "Friends");
INSERT INTO bard_spells VALUES (NULL, "Light");
INSERT INTO bard_spells VALUES (NULL, "Mage Hand");
INSERT INTO bard_spells VALUES (NULL, "Mending");
INSERT INTO bard_spells VALUES (NULL, "Message");
INSERT INTO bard_spells VALUES (NULL, "Minor Illusion");
INSERT INTO bard_spells VALUES (NULL, "Prestidigitation");
INSERT INTO bard_spells VALUES (NULL, "True Strike");
INSERT INTO bard_spells VALUES (NULL, "Vicious Mockery");
INSERT INTO bard_spells VALUES (NULL, "Animal Friendship");			-- 1
INSERT INTO bard_spells VALUES (NULL, "Bane");
INSERT INTO bard_spells VALUES (NULL, "Charm Person");
INSERT INTO bard_spells VALUES (NULL, "Comprehend Languages");
INSERT INTO bard_spells VALUES (NULL, "Cure Wounds");
INSERT INTO bard_spells VALUES (NULL, "Detect Magic");
INSERT INTO bard_spells VALUES (NULL, "Disguise Self");
INSERT INTO bard_spells VALUES (NULL, "Dissonant Whispers");
INSERT INTO bard_spells VALUES (NULL, "Faerie Fire");
INSERT INTO bard_spells VALUES (NULL, "Feather Fall");
INSERT INTO bard_spells VALUES (NULL, "Healing Word");
INSERT INTO bard_spells VALUES (NULL, "Heroism");
INSERT INTO bard_spells VALUES (NULL, "Identify");
INSERT INTO bard_spells VALUES (NULL, "Illusory Script");
INSERT INTO bard_spells VALUES (NULL, "Longstrider");
INSERT INTO bard_spells VALUES (NULL, "Silent Image");
INSERT INTO bard_spells VALUES (NULL, "Sleep");
INSERT INTO bard_spells VALUES (NULL, "Speak With Animals");
INSERT INTO bard_spells VALUES (NULL, "Tasha's Hideous Laughter");
INSERT INTO bard_spells VALUES (NULL, "Thunderwave");
INSERT INTO bard_spells VALUES (NULL, "Unseen Servant");
INSERT INTO bard_spells VALUES (NULL, "Animal Messenger");				-- 2
INSERT INTO bard_spells VALUES (NULL, "Blindness/Deafness");
INSERT INTO bard_spells VALUES (NULL, "Calm Emotions");
INSERT INTO bard_spells VALUES (NULL, "Cloud of Daggers");
INSERT INTO bard_spells VALUES (NULL, "Crown of Madness");
INSERT INTO bard_spells VALUES (NULL, "Detect Thoughts");
INSERT INTO bard_spells VALUES (NULL, "Enhance Ability");
INSERT INTO bard_spells VALUES (NULL, "Enthrall");
INSERT INTO bard_spells VALUES (NULL, "Heat Metal");
INSERT INTO bard_spells VALUES (NULL, "Hold Person");
INSERT INTO bard_spells VALUES (NULL, "Invisibility");
INSERT INTO bard_spells VALUES (NULL, "Knock");
INSERT INTO bard_spells VALUES (NULL, "Lesser Restoration");
INSERT INTO bard_spells VALUES (NULL, "Locate Animals or Plants");
INSERT INTO bard_spells VALUES (NULL, "Locate Object");
INSERT INTO bard_spells VALUES (NULL, "Magic Mouth");
INSERT INTO bard_spells VALUES (NULL, "Phantasmal Force");
INSERT INTO bard_spells VALUES (NULL, "See Invisibility");
INSERT INTO bard_spells VALUES (NULL, "Shatter");
INSERT INTO bard_spells VALUES (NULL, "Silence");
INSERT INTO bard_spells VALUES (NULL, "Suggestion");
INSERT INTO bard_spells VALUES (NULL, "Zone of Truth");
INSERT INTO bard_spells VALUES (NULL, "Bestow Curse");						-- 3
INSERT INTO bard_spells VALUES (NULL, "Clairvoyance");
INSERT INTO bard_spells VALUES (NULL, "Dispel Magic");
INSERT INTO bard_spells VALUES (NULL, "Fear");
INSERT INTO bard_spells VALUES (NULL, "Feign Death");
INSERT INTO bard_spells VALUES (NULL, "Glyph of Warding");
INSERT INTO bard_spells VALUES (NULL, "Hypnotic Pattern");
INSERT INTO bard_spells VALUES (NULL, "Leomund's Tiny Hut");
INSERT INTO bard_spells VALUES (NULL, "Major Image");
INSERT INTO bard_spells VALUES (NULL, "Nondetection");
INSERT INTO bard_spells VALUES (NULL, "Plant Growth");
INSERT INTO bard_spells VALUES (NULL, "Sending");
INSERT INTO bard_spells VALUES (NULL, "Speak with Dead");
INSERT INTO bard_spells VALUES (NULL, "Speak with Plants");
INSERT INTO bard_spells VALUES (NULL, "Stinking Cloud");
INSERT INTO bard_spells VALUES (NULL, "Tongues");
INSERT INTO bard_spells VALUES (NULL, "Compulsion");							-- 4
INSERT INTO bard_spells VALUES (NULL, "Confusion");
INSERT INTO bard_spells VALUES (NULL, "Dimension Door");
INSERT INTO bard_spells VALUES (NULL, "Freedom of Movement");
INSERT INTO bard_spells VALUES (NULL, "Greater Invisibility");
INSERT INTO bard_spells VALUES (NULL, "Hallucinatory Terrain");
INSERT INTO bard_spells VALUES (NULL, "Locate Creature");
INSERT INTO bard_spells VALUES (NULL, "Polymorph");
INSERT INTO bard_spells VALUES (NULL, "Animate Objects");				-- 5
INSERT INTO bard_spells VALUES (NULL, "Awaken");
INSERT INTO bard_spells VALUES (NULL, "Dominate Person");
INSERT INTO bard_spells VALUES (NULL, "Dream");
INSERT INTO bard_spells VALUES (NULL, "Geas");
INSERT INTO bard_spells VALUES (NULL, "Greater Restoration");
INSERT INTO bard_spells VALUES (NULL, "Hold Monster");
INSERT INTO bard_spells VALUES (NULL, "Legend Lore");
INSERT INTO bard_spells VALUES (NULL, "Mass Cure Wounds");
INSERT INTO bard_spells VALUES (NULL, "Mislead");
INSERT INTO bard_spells VALUES (NULL, "Modify Memory");
INSERT INTO bard_spells VALUES (NULL, "Planar Binding");
INSERT INTO bard_spells VALUES (NULL, "Raise Dead");
INSERT INTO bard_spells VALUES (NULL, "Scrying");
INSERT INTO bard_spells VALUES (NULL, "Seeming");
INSERT INTO bard_spells VALUES (NULL, "Teleportation Circle");
INSERT INTO bard_spells VALUES (NULL, "Eyebite");								-- 6
INSERT INTO bard_spells VALUES (NULL, "Find the Path");
INSERT INTO bard_spells VALUES (NULL, "Guards and Wards");
INSERT INTO bard_spells VALUES (NULL, "Mass Suggestion");
INSERT INTO bard_spells VALUES (NULL, "Otto's Irresistible Dance");
INSERT INTO bard_spells VALUES (NULL, "Programmed Illusion");
INSERT INTO bard_spells VALUES (NULL, "True Seeing");
INSERT INTO bard_spells VALUES (NULL, "Etherealness");						-- 7
INSERT INTO bard_spells VALUES (NULL, "Forcecage");
INSERT INTO bard_spells VALUES (NULL, "Mirage Arcane");
INSERT INTO bard_spells VALUES (NULL, "Mordenkainen's Magnificent Mansion");
INSERT INTO bard_spells VALUES (NULL, "Mordenkainen's Sword");
INSERT INTO bard_spells VALUES (NULL, "Project Image");
INSERT INTO bard_spells VALUES (NULL, "Regenerate");
INSERT INTO bard_spells VALUES (NULL, "Resurrection");
INSERT INTO bard_spells VALUES (NULL, "Symbol");
INSERT INTO bard_spells VALUES (NULL, "Teleport");
INSERT INTO bard_spells VALUES (NULL, "Dominate Monster");					-- 8
INSERT INTO bard_spells VALUES (NULL, "Feeblemind");
INSERT INTO bard_spells VALUES (NULL, "Glibness");
INSERT INTO bard_spells VALUES (NULL, "Mind Blank");
INSERT INTO bard_spells VALUES (NULL, "Power Word Stun");
INSERT INTO bard_spells VALUES (NULL, "Foresight");								-- 9
INSERT INTO bard_spells VALUES (NULL, "Power Word Heal");
INSERT INTO bard_spells VALUES (NULL, "Power Word Kill");
INSERT INTO bard_spells VALUES (NULL, "True Polymorph");
-- XGE
INSERT INTO bard_spells VALUES (NULL, "Thunderclap");
INSERT INTO bard_spells VALUES (NULL, "Earth Tremor");
INSERT INTO bard_spells VALUES (NULL, "Pyrotechnics");
INSERT INTO bard_spells VALUES (NULL, "Skywrite");
INSERT INTO bard_spells VALUES (NULL, "Warding Wind");
INSERT INTO bard_spells VALUES (NULL, "Catnap");
INSERT INTO bard_spells VALUES (NULL, "Enemies Abound");
INSERT INTO bard_spells VALUES (NULL, "Charm Monster");
INSERT INTO bard_spells VALUES (NULL, "Skill Empowerment");
INSERT INTO bard_spells VALUES (NULL, "Synaptic Static");
INSERT INTO bard_spells VALUES (NULL, "Mass Polymorph");
INSERT INTO bard_spells VALUES (NULL, "Psychic scream");
-- TCE
INSERT INTO bard_spells VALUES (NULL, "Intellect Fortress");
INSERT INTO bard_spells VALUES (NULL, "Dream of the Blue Veil");
-- FTD
INSERT INTO bard_spells VALUES (NULL, "Nathair's Mischief");
INSERT INTO bard_spells VALUES (NULL, "Raulothim's Psychic Lance");

-- cleric_spells SPELLS
-- PHB
INSERT INTO cleric_spells VALUES (NULL, "Guidance");										-- 0
INSERT INTO cleric_spells VALUES (NULL, "Light");
INSERT INTO cleric_spells VALUES (NULL, "Mending");
INSERT INTO cleric_spells VALUES (NULL, "Resistance");
INSERT INTO cleric_spells VALUES (NULL, "Sacred Flame");
INSERT INTO cleric_spells VALUES (NULL, "Spare the Dying");
INSERT INTO cleric_spells VALUES (NULL, "Thaumaturgy");
INSERT INTO cleric_spells VALUES (NULL, "Bane");												-- 1
INSERT INTO cleric_spells VALUES (NULL, "Bless");
INSERT INTO cleric_spells VALUES (NULL, "Command");
INSERT INTO cleric_spells VALUES (NULL, "Create or Destroy Water");
INSERT INTO cleric_spells VALUES (NULL, "Cure Wounds");
INSERT INTO cleric_spells VALUES (NULL, "Detect Evil and Good");
INSERT INTO cleric_spells VALUES (NULL, "Detect Magic");
INSERT INTO cleric_spells VALUES (NULL, "Detect Poison and Disease");
INSERT INTO cleric_spells VALUES (NULL, "Guiding Bolt");
INSERT INTO cleric_spells VALUES (NULL, "Healing Word");
INSERT INTO cleric_spells VALUES (NULL, "Inflict Wounds");
INSERT INTO cleric_spells VALUES (NULL, "Protection from Evil and Good");
INSERT INTO cleric_spells VALUES (NULL, "Purify Food and Drink");
INSERT INTO cleric_spells VALUES (NULL, "Sanctuary");
INSERT INTO cleric_spells VALUES (NULL, "Shield of Faith");
INSERT INTO cleric_spells VALUES (NULL, "Aid");												-- 2
INSERT INTO cleric_spells VALUES (NULL, "Augury");
INSERT INTO cleric_spells VALUES (NULL, "Blindness/Deafness");
INSERT INTO cleric_spells VALUES (NULL, "Calm Emotions");
INSERT INTO cleric_spells VALUES (NULL, "Continual Flame");
INSERT INTO cleric_spells VALUES (NULL, "Enhance Abilities");
INSERT INTO cleric_spells VALUES (NULL, "Find Traps");
INSERT INTO cleric_spells VALUES (NULL, "Gentle Repose");
INSERT INTO cleric_spells VALUES (NULL, "Hold Person");
INSERT INTO cleric_spells VALUES (NULL, "Lesser Restoration");
INSERT INTO cleric_spells VALUES (NULL, "Locate Object");
INSERT INTO cleric_spells VALUES (NULL, "Prayer of Healing");
INSERT INTO cleric_spells VALUES (NULL, "Protection from Poison");
INSERT INTO cleric_spells VALUES (NULL, "Silence");
INSERT INTO cleric_spells VALUES (NULL, "Spiritual Weapon");
INSERT INTO cleric_spells VALUES (NULL, "Warding Bond");
INSERT INTO cleric_spells VALUES (NULL, "Zone of Truth");
INSERT INTO cleric_spells VALUES (NULL, "Animate Dead");								-- 3
INSERT INTO cleric_spells VALUES (NULL, "Beacon of Hope");
INSERT INTO cleric_spells VALUES (NULL, "Bestow Curse");
INSERT INTO cleric_spells VALUES (NULL, "Clairvoyance");
INSERT INTO cleric_spells VALUES (NULL, "Create Food and Water");
INSERT INTO cleric_spells VALUES (NULL, "Daylight");
INSERT INTO cleric_spells VALUES (NULL, "Dispel Magic");
INSERT INTO cleric_spells VALUES (NULL, "Feign Death");
INSERT INTO cleric_spells VALUES (NULL, "Glyph of Warding");
INSERT INTO cleric_spells VALUES (NULL, "Magic Circle");
INSERT INTO cleric_spells VALUES (NULL, "Mass Healing Word");
INSERT INTO cleric_spells VALUES (NULL, "Meld into Stone");
INSERT INTO cleric_spells VALUES (NULL, "Protection from Energy");
INSERT INTO cleric_spells VALUES (NULL, "Remove Curse");
INSERT INTO cleric_spells VALUES (NULL, "Revivify");
INSERT INTO cleric_spells VALUES (NULL, "Sending");
INSERT INTO cleric_spells VALUES (NULL, "Speak with Dead");
INSERT INTO cleric_spells VALUES (NULL, "Spirit Guardians");
INSERT INTO cleric_spells VALUES (NULL, "Tongues");
INSERT INTO cleric_spells VALUES (NULL, "Water Walk");
INSERT INTO cleric_spells VALUES (NULL, "Banishment");									-- 4
INSERT INTO cleric_spells VALUES (NULL, "Control Water");
INSERT INTO cleric_spells VALUES (NULL, "Death Ward");
INSERT INTO cleric_spells VALUES (NULL, "Divination");
INSERT INTO cleric_spells VALUES (NULL, "Freedom of Movement");
INSERT INTO cleric_spells VALUES (NULL, "Guardian of Faith");
INSERT INTO cleric_spells VALUES (NULL, "Locate Creature");
INSERT INTO cleric_spells VALUES (NULL, "Stone Shape");
INSERT INTO cleric_spells VALUES (NULL, "Commune");										-- 5
INSERT INTO cleric_spells VALUES (NULL, "Contagion");
INSERT INTO cleric_spells VALUES (NULL, "Dispel Evil and Good");
INSERT INTO cleric_spells VALUES (NULL, "Flame Strike");
INSERT INTO cleric_spells VALUES (NULL, "Geas");
INSERT INTO cleric_spells VALUES (NULL, "Greater Restoration");
INSERT INTO cleric_spells VALUES (NULL, "Hallow");
INSERT INTO cleric_spells VALUES (NULL, "Insect Plague");
INSERT INTO cleric_spells VALUES (NULL, "Legend Lore");
INSERT INTO cleric_spells VALUES (NULL, "Mass Cure Wounds");
INSERT INTO cleric_spells VALUES (NULL, "Planar Binding");
INSERT INTO cleric_spells VALUES (NULL, "Raise Dead");
INSERT INTO cleric_spells VALUES (NULL, "Scrying");
INSERT INTO cleric_spells VALUES (NULL, "Blade Barrier");							-- 6
INSERT INTO cleric_spells VALUES (NULL, "Create Undead");
INSERT INTO cleric_spells VALUES (NULL, "Find the Path");
INSERT INTO cleric_spells VALUES (NULL, "Forbiddance");
INSERT INTO cleric_spells VALUES (NULL, "Harm");
INSERT INTO cleric_spells VALUES (NULL, "Heal");
INSERT INTO cleric_spells VALUES (NULL, "Heroes' Feast");
INSERT INTO cleric_spells VALUES (NULL, "Planar Ally");
INSERT INTO cleric_spells VALUES (NULL, "True Seeing");
INSERT INTO cleric_spells VALUES (NULL, "Word of Recall");
INSERT INTO cleric_spells VALUES (NULL, "Conjure Celestial");					-- 7
INSERT INTO cleric_spells VALUES (NULL, "Divine Word");
INSERT INTO cleric_spells VALUES (NULL, "Etherealness");
INSERT INTO cleric_spells VALUES (NULL, "Fire Storm");
INSERT INTO cleric_spells VALUES (NULL, "Plane Shift");
INSERT INTO cleric_spells VALUES (NULL, "Regenerate");
INSERT INTO cleric_spells VALUES (NULL, "Resurrection");
INSERT INTO cleric_spells VALUES (NULL, "Symbol");
INSERT INTO cleric_spells VALUES (NULL, "Antimagic Field");						-- 8
INSERT INTO cleric_spells VALUES (NULL, "Control Weather");
INSERT INTO cleric_spells VALUES (NULL, "Earthquake");
INSERT INTO cleric_spells VALUES (NULL, "Holy Aura");
INSERT INTO cleric_spells VALUES (NULL, "Astral Projection");					-- 9
INSERT INTO cleric_spells VALUES (NULL, "Gate");
INSERT INTO cleric_spells VALUES (NULL, "Mass Heal");
INSERT INTO cleric_spells VALUES (NULL, "True Resurrection");
-- XGE
INSERT INTO cleric_spells VALUES (NULL, "Toll the Dead");
INSERT INTO cleric_spells VALUES (NULL, "Word of Radiance");
INSERT INTO cleric_spells VALUES (NULL, "Ceremony");
INSERT INTO cleric_spells VALUES (NULL, "Life Transference");
INSERT INTO cleric_spells VALUES (NULL, "Dawn");
INSERT INTO cleric_spells VALUES (NULL, "Holy Weapon");
INSERT INTO cleric_spells VALUES (NULL, "Temple of the Gods");
-- TCE
INSERT INTO cleric_spells VALUES (NULL, "Spirit Shroud");
INSERT INTO cleric_spells VALUES (NULL, "Summon Celestial");

-- druid_spells SPELLS
-- PHB
INSERT INTO druid_spells VALUES (NULL, "Druidcraft");									-- 0
INSERT INTO druid_spells VALUES (NULL, "Guidance");
INSERT INTO druid_spells VALUES (NULL, "Mending");
INSERT INTO druid_spells VALUES (NULL, "Poison Spray");
INSERT INTO druid_spells VALUES (NULL, "Produce Flame");
INSERT INTO druid_spells VALUES (NULL, "Resistance");
INSERT INTO druid_spells VALUES (NULL, "Shillelagh");
INSERT INTO druid_spells VALUES (NULL, "Thorn Whip");
INSERT INTO druid_spells VALUES (NULL, "Animal Friendship");						-- 1
INSERT INTO druid_spells VALUES (NULL, "Charm Person");
INSERT INTO druid_spells VALUES (NULL, "Create or Destroy Water");
INSERT INTO druid_spells VALUES (NULL, "Cure Wounds");
INSERT INTO druid_spells VALUES (NULL, "Detect Magic");
INSERT INTO druid_spells VALUES (NULL, "Detect Poison and Disease");
INSERT INTO druid_spells VALUES (NULL, "Entangle");
INSERT INTO druid_spells VALUES (NULL, "Faerie Fire");
INSERT INTO druid_spells VALUES (NULL, "Fog Cloud");
INSERT INTO druid_spells VALUES (NULL, "Goodberry");
INSERT INTO druid_spells VALUES (NULL, "Healing Word");
INSERT INTO druid_spells VALUES (NULL, "Jump");
INSERT INTO druid_spells VALUES (NULL, "Longstrider");
INSERT INTO druid_spells VALUES (NULL, "Purify Food and Drink");
INSERT INTO druid_spells VALUES (NULL, "Speak with Animals");
INSERT INTO druid_spells VALUES (NULL, "Thunderwave");
INSERT INTO druid_spells VALUES (NULL, "Animal Messenger");						-- 2
INSERT INTO druid_spells VALUES (NULL, "Barkskin");
INSERT INTO druid_spells VALUES (NULL, "Beast Sense");
INSERT INTO druid_spells VALUES (NULL, "Darkvision");
INSERT INTO druid_spells VALUES (NULL, "Enhance Ability");
INSERT INTO druid_spells VALUES (NULL, "Find Traps");
INSERT INTO druid_spells VALUES (NULL, "Flame Blade");
INSERT INTO druid_spells VALUES (NULL, "Flaming Sphere");
INSERT INTO druid_spells VALUES (NULL, "Gust of Wind");
INSERT INTO druid_spells VALUES (NULL, "Heat Metal");
INSERT INTO druid_spells VALUES (NULL, "Hold Person");
INSERT INTO druid_spells VALUES (NULL, "Lesser Restoration");
INSERT INTO druid_spells VALUES (NULL, "Locate Animals or Plants");
INSERT INTO druid_spells VALUES (NULL, "Locate Object");
INSERT INTO druid_spells VALUES (NULL, "Moonbeam");
INSERT INTO druid_spells VALUES (NULL, "Pass without Trace");
INSERT INTO druid_spells VALUES (NULL, "Protection from Poison");
INSERT INTO druid_spells VALUES (NULL, "Spike Growth");
INSERT INTO druid_spells VALUES (NULL, "Call Lightning");							-- 3
INSERT INTO druid_spells VALUES (NULL, "Conjure Animals");
INSERT INTO druid_spells VALUES (NULL, "Daylight");
INSERT INTO druid_spells VALUES (NULL, "Dispel Magic");
INSERT INTO druid_spells VALUES (NULL, "Feign Death");
INSERT INTO druid_spells VALUES (NULL, "Meld into Stone");
INSERT INTO druid_spells VALUES (NULL, "Plant Growth");
INSERT INTO druid_spells VALUES (NULL, "Protection from Energy");
INSERT INTO druid_spells VALUES (NULL, "Sleet Storm");
INSERT INTO druid_spells VALUES (NULL, "Speak with Plants");
INSERT INTO druid_spells VALUES (NULL, "Water Breathing");
INSERT INTO druid_spells VALUES (NULL, "Water Walk");
INSERT INTO druid_spells VALUES (NULL, "Wind Wall");
INSERT INTO druid_spells VALUES (NULL, "Blight");											-- 4
INSERT INTO druid_spells VALUES (NULL, "Confusion");
INSERT INTO druid_spells VALUES (NULL, "Conjure Minor Elementals");
INSERT INTO druid_spells VALUES (NULL, "Conjure Woodland Beings");
INSERT INTO druid_spells VALUES (NULL, "Control Water");
INSERT INTO druid_spells VALUES (NULL, "Dominate Beast");
INSERT INTO druid_spells VALUES (NULL, "Freedom of Movement");
INSERT INTO druid_spells VALUES (NULL, "Giant Insect");
INSERT INTO druid_spells VALUES (NULL, "Grasping Vine");
INSERT INTO druid_spells VALUES (NULL, "Hallucinatory Terrain");
INSERT INTO druid_spells VALUES (NULL, "Ice Storm");
INSERT INTO druid_spells VALUES (NULL, "Locate Creature");
INSERT INTO druid_spells VALUES (NULL, "Polymorph");
INSERT INTO druid_spells VALUES (NULL, "Stone Shape");
INSERT INTO druid_spells VALUES (NULL, "Stoneskin");
INSERT INTO druid_spells VALUES (NULL, "Wall of Fire");
INSERT INTO druid_spells VALUES (NULL, "Antilife Shell");							-- 5
INSERT INTO druid_spells VALUES (NULL, "Awaken");
INSERT INTO druid_spells VALUES (NULL, "Commune with Nature");
INSERT INTO druid_spells VALUES (NULL, "Conjure Elemental");
INSERT INTO druid_spells VALUES (NULL, "Contagion");
INSERT INTO druid_spells VALUES (NULL, "Geas");
INSERT INTO druid_spells VALUES (NULL, "Greater Restoration");
INSERT INTO druid_spells VALUES (NULL, "Insect Plague");
INSERT INTO druid_spells VALUES (NULL, "Mass Cure Wounds");
INSERT INTO druid_spells VALUES (NULL, "Planar Binding");
INSERT INTO druid_spells VALUES (NULL, "Reincarnate");
INSERT INTO druid_spells VALUES (NULL, "Scrying");
INSERT INTO druid_spells VALUES (NULL, "Tree Stride");
INSERT INTO druid_spells VALUES (NULL, "Wall of Stone");
INSERT INTO druid_spells VALUES (NULL, "Conjure Fey");									-- 6
INSERT INTO druid_spells VALUES (NULL, "Find the Path");
INSERT INTO druid_spells VALUES (NULL, "Heal");
INSERT INTO druid_spells VALUES (NULL, "Heroes' Feast");
INSERT INTO druid_spells VALUES (NULL, "Move Earth");
INSERT INTO druid_spells VALUES (NULL, "Sunbeam");
INSERT INTO druid_spells VALUES (NULL, "Transport via Plants");
INSERT INTO druid_spells VALUES (NULL, "Wall of Thorns");
INSERT INTO druid_spells VALUES (NULL, "Wind Walk");
INSERT INTO druid_spells VALUES (NULL, "Fire Storm");									-- 7
INSERT INTO druid_spells VALUES (NULL, "Mirage Arcane");
INSERT INTO druid_spells VALUES (NULL, "Plane Shift");
INSERT INTO druid_spells VALUES (NULL, "Regenerate");
INSERT INTO druid_spells VALUES (NULL, "Reverse Gravity");
INSERT INTO druid_spells VALUES (NULL, "Animal Shapes");								-- 8
INSERT INTO druid_spells VALUES (NULL, "Antipathy/Sympathy");
INSERT INTO druid_spells VALUES (NULL, "Control Weather");
INSERT INTO druid_spells VALUES (NULL, "Earthquake");
INSERT INTO druid_spells VALUES (NULL, "Feeblemind");
INSERT INTO druid_spells VALUES (NULL, "Sunburst");
INSERT INTO druid_spells VALUES (NULL, "Tsunami");
INSERT INTO druid_spells VALUES (NULL, "Foresight");										-- 9
INSERT INTO druid_spells VALUES (NULL, "Shapechange");
INSERT INTO druid_spells VALUES (NULL, "Storm of Vengeance");
INSERT INTO druid_spells VALUES (NULL, "True Resurrection");
-- XGE
INSERT INTO druid_spells VALUES (NULL, "Control Flames");
INSERT INTO druid_spells VALUES (NULL, "Create Bonfire");
INSERT INTO druid_spells VALUES (NULL, "Frostbite");
INSERT INTO druid_spells VALUES (NULL, "Gust");
INSERT INTO druid_spells VALUES (NULL, "Infestation");
INSERT INTO druid_spells VALUES (NULL, "Magic Stone");
INSERT INTO druid_spells VALUES (NULL, "Mold Earth");
INSERT INTO druid_spells VALUES (NULL, "Primal Savagery");
INSERT INTO druid_spells VALUES (NULL, "Shape Water");
INSERT INTO druid_spells VALUES (NULL, "Thunderclap");
INSERT INTO druid_spells VALUES (NULL, "Absorb Elements");
INSERT INTO druid_spells VALUES (NULL, "Beast Bond");
INSERT INTO druid_spells VALUES (NULL, "Earth Tremor");
INSERT INTO druid_spells VALUES (NULL, "Ice Knife");
INSERT INTO druid_spells VALUES (NULL, "Snare");
INSERT INTO druid_spells VALUES (NULL, "Dust Devil");
INSERT INTO druid_spells VALUES (NULL, "Earthbind");
INSERT INTO druid_spells VALUES (NULL, "Healing Spirit");
INSERT INTO druid_spells VALUES (NULL, "Skywrite");
INSERT INTO druid_spells VALUES (NULL, "Warding Wind");
INSERT INTO druid_spells VALUES (NULL, "Erupting Earth");
INSERT INTO druid_spells VALUES (NULL, "Flame Arrows");
INSERT INTO druid_spells VALUES (NULL, "Tidal Wave");
INSERT INTO druid_spells VALUES (NULL, "Wall of Water");
INSERT INTO druid_spells VALUES (NULL, "Charm Monster");
INSERT INTO druid_spells VALUES (NULL, "Elemental Bane");
INSERT INTO druid_spells VALUES (NULL, "Guardian of Nature");
INSERT INTO druid_spells VALUES (NULL, "Watery Sphere");
INSERT INTO druid_spells VALUES (NULL, "Control Winds");
INSERT INTO druid_spells VALUES (NULL, "Maelstrom");
INSERT INTO druid_spells VALUES (NULL, "Transmute Rock");
INSERT INTO druid_spells VALUES (NULL, "Wrath of Nature");
INSERT INTO druid_spells VALUES (NULL, "Bones of the Earth");
INSERT INTO druid_spells VALUES (NULL, "Druid Grove");
INSERT INTO druid_spells VALUES (NULL, "Investiture of Flame");
INSERT INTO druid_spells VALUES (NULL, "Investiture of Ice");
INSERT INTO druid_spells VALUES (NULL, "Investiture of Stone");
INSERT INTO druid_spells VALUES (NULL, "Investiture of Wind");
INSERT INTO druid_spells VALUES (NULL, "Primordial Ward");
INSERT INTO druid_spells VALUES (NULL, "Whirlwind");
-- TCE
INSERT INTO druid_spells VALUES (NULL, "Summon Beast");
INSERT INTO druid_spells VALUES (NULL, "Summon Fey");
INSERT INTO druid_spells VALUES (NULL, "Summon Elemental");
-- FTD
INSERT INTO druid_spells VALUES (NULL, "Summon Draconic Spirit");
INSERT INTO druid_spells VALUES (NULL, "Draconic Transformation");

-- paladin_spells SPELLS
-- PHB
INSERT INTO paladin_spells VALUES (NULL, "Bless");														-- 1
INSERT INTO paladin_spells VALUES (NULL, "Command");
INSERT INTO paladin_spells VALUES (NULL, "Compelled Duel");
INSERT INTO paladin_spells VALUES (NULL, "Cure Wounds");
INSERT INTO paladin_spells VALUES (NULL, "Detect Evil and Good");
INSERT INTO paladin_spells VALUES (NULL, "Detect Magic");
INSERT INTO paladin_spells VALUES (NULL, "Detect Poison and Disease");
INSERT INTO paladin_spells VALUES (NULL, "Divine Favor");
INSERT INTO paladin_spells VALUES (NULL, "Heroism");
INSERT INTO paladin_spells VALUES (NULL, "Protection from Evil and Good");
INSERT INTO paladin_spells VALUES (NULL, "Purify Food and Drink");
INSERT INTO paladin_spells VALUES (NULL, "Searing Smite");
INSERT INTO paladin_spells VALUES (NULL, "Shield of Faith");
INSERT INTO paladin_spells VALUES (NULL, "Thunderous Smite");
INSERT INTO paladin_spells VALUES (NULL, "Wrathful Smite");
INSERT INTO paladin_spells VALUES (NULL, "Aid");															-- 2
INSERT INTO paladin_spells VALUES (NULL, "Branding Smite");
INSERT INTO paladin_spells VALUES (NULL, "Find Steed");
INSERT INTO paladin_spells VALUES (NULL, "Lesser Restoration");
INSERT INTO paladin_spells VALUES (NULL, "Locate Object");
INSERT INTO paladin_spells VALUES (NULL, "Magic Weapon");
INSERT INTO paladin_spells VALUES (NULL, "Protection from Poison");
INSERT INTO paladin_spells VALUES (NULL, "Zone of Truth");
INSERT INTO paladin_spells VALUES (NULL, "Aura of Vitality");								-- 3
INSERT INTO paladin_spells VALUES (NULL, "Blinding Smite");
INSERT INTO paladin_spells VALUES (NULL, "Create Food and Water");
INSERT INTO paladin_spells VALUES (NULL, "Crusader's Mantle");
INSERT INTO paladin_spells VALUES (NULL, "Daylight");
INSERT INTO paladin_spells VALUES (NULL, "Dispel Magic");
INSERT INTO paladin_spells VALUES (NULL, "Elemental Weapon");
INSERT INTO paladin_spells VALUES (NULL, "Magic Circle");
INSERT INTO paladin_spells VALUES (NULL, "Remove Curse");
INSERT INTO paladin_spells VALUES (NULL, "Revivify");
INSERT INTO paladin_spells VALUES (NULL, "Aura of Life");										-- 4
INSERT INTO paladin_spells VALUES (NULL, "Aura of Purity");
INSERT INTO paladin_spells VALUES (NULL, "Banishment");
INSERT INTO paladin_spells VALUES (NULL, "Death Ward");
INSERT INTO paladin_spells VALUES (NULL, "Locate Creature");
INSERT INTO paladin_spells VALUES (NULL, "Staggering Smite");
INSERT INTO paladin_spells VALUES (NULL, "Banishing Smite");									-- 5
INSERT INTO paladin_spells VALUES (NULL, "Circle of Power");
INSERT INTO paladin_spells VALUES (NULL, "Destructive Wave");
INSERT INTO paladin_spells VALUES (NULL, "Dispel Evil and Good");
INSERT INTO paladin_spells VALUES (NULL, "Geas");
INSERT INTO paladin_spells VALUES (NULL, "Raise Dead");
-- XGE
INSERT INTO paladin_spells VALUES (NULL, "Ceremony");
INSERT INTO paladin_spells VALUES (NULL, "Find Greater Steed");
INSERT INTO paladin_spells VALUES (NULL, "Holy Weapon");
-- TCE
INSERT INTO paladin_spells VALUES (NULL, "Spirit Shroud");
INSERT INTO paladin_spells VALUES (NULL, "Summon Celestial");

-- ranger_spells SPELLS
-- PHB
INSERT INTO ranger_spells VALUES (NULL, "Alarm");														-- 1
INSERT INTO ranger_spells VALUES (NULL, "Animal Friendship");
INSERT INTO ranger_spells VALUES (NULL, "Cure Wounds");
INSERT INTO ranger_spells VALUES (NULL, "Detect Magic");
INSERT INTO ranger_spells VALUES (NULL, "Detect Poison and Disease");
INSERT INTO ranger_spells VALUES (NULL, "Ensnaring Strike");
INSERT INTO ranger_spells VALUES (NULL, "Fog Cloud");
INSERT INTO ranger_spells VALUES (NULL, "Goodberry");
INSERT INTO ranger_spells VALUES (NULL, "Hail of Thorns");
INSERT INTO ranger_spells VALUES (NULL, "Hunter's Mark");
INSERT INTO ranger_spells VALUES (NULL, "Jump");
INSERT INTO ranger_spells VALUES (NULL, "Longstrider");
INSERT INTO ranger_spells VALUES (NULL, "Speak with Animals");
INSERT INTO ranger_spells VALUES (NULL, "Animal Messenger");									-- 2
INSERT INTO ranger_spells VALUES (NULL, "Barkskin");
INSERT INTO ranger_spells VALUES (NULL, "Beast Sense");
INSERT INTO ranger_spells VALUES (NULL, "Cordon of Arrows");
INSERT INTO ranger_spells VALUES (NULL, "Darkvision");
INSERT INTO ranger_spells VALUES (NULL, "Find Traps");
INSERT INTO ranger_spells VALUES (NULL, "Lesser Restoration");
INSERT INTO ranger_spells VALUES (NULL, "Locate Animals or Plants");
INSERT INTO ranger_spells VALUES (NULL, "Locate Object");
INSERT INTO ranger_spells VALUES (NULL, "Pass without Trace");
INSERT INTO ranger_spells VALUES (NULL, "Protection from Poison");
INSERT INTO ranger_spells VALUES (NULL, "Silence");
INSERT INTO ranger_spells VALUES (NULL, "Spike Growth");
INSERT INTO ranger_spells VALUES (NULL, "Conjure Animals");									-- 3
INSERT INTO ranger_spells VALUES (NULL, "Conjure Barrage");
INSERT INTO ranger_spells VALUES (NULL, "Daylight");
INSERT INTO ranger_spells VALUES (NULL, "Lightning Arrow");
INSERT INTO ranger_spells VALUES (NULL, "Nondetection");
INSERT INTO ranger_spells VALUES (NULL, "Plant Growth");
INSERT INTO ranger_spells VALUES (NULL, "Protection from Energy");
INSERT INTO ranger_spells VALUES (NULL, "Speak with Plants");
INSERT INTO ranger_spells VALUES (NULL, "Water Breathing");
INSERT INTO ranger_spells VALUES (NULL, "Water Walk");
INSERT INTO ranger_spells VALUES (NULL, "Wind Wall");
INSERT INTO ranger_spells VALUES (NULL, "Conjure Woodland Beings");					-- 4
INSERT INTO ranger_spells VALUES (NULL, "Freedom of Movement");
INSERT INTO ranger_spells VALUES (NULL, "Grasping Vine");
INSERT INTO ranger_spells VALUES (NULL, "Locate Creature");
INSERT INTO ranger_spells VALUES (NULL, "Stoneskin");
INSERT INTO ranger_spells VALUES (NULL, "Commune with Nature");							-- 5
INSERT INTO ranger_spells VALUES (NULL, "Conjure Volley");
INSERT INTO ranger_spells VALUES (NULL, "Swift Quiver");
INSERT INTO ranger_spells VALUES (NULL, "Tree Stride");
-- XGE
INSERT INTO ranger_spells VALUES (NULL, "Absorb Elements");
INSERT INTO ranger_spells VALUES (NULL, "Beast Bond");
INSERT INTO ranger_spells VALUES (NULL, "Snare");
INSERT INTO ranger_spells VALUES (NULL, "Zephyr Strike");
INSERT INTO ranger_spells VALUES (NULL, "Healing Spirit");
INSERT INTO ranger_spells VALUES (NULL, "Flame Arrows");
INSERT INTO ranger_spells VALUES (NULL, "Guardian of Nature");
INSERT INTO ranger_spells VALUES (NULL, "Steel Wind Strike");
INSERT INTO ranger_spells VALUES (NULL, "Wrath of Nature");
-- TCE
INSERT INTO ranger_spells VALUES (NULL, "Summon Beast");
INSERT INTO ranger_spells VALUES (NULL, "Summon Fey");
INSERT INTO ranger_spells VALUES (NULL, "Summon Elemental");
-- FTD
INSERT INTO ranger_spells VALUES (NULL, "Ashardalon's Stride");

-- sorcerer_spells SPELLS
-- PHB
INSERT INTO sorcerer_spells VALUES (NULL, "Acid Splash");										-- 0
INSERT INTO sorcerer_spells VALUES (NULL, "Blade Ward");
INSERT INTO sorcerer_spells VALUES (NULL, "Chill Touch");
INSERT INTO sorcerer_spells VALUES (NULL, "Dancing Lights");
INSERT INTO sorcerer_spells VALUES (NULL, "Fire Bolt");
INSERT INTO sorcerer_spells VALUES (NULL, "Friends");
INSERT INTO sorcerer_spells VALUES (NULL, "Light");
INSERT INTO sorcerer_spells VALUES (NULL, "Mage Hand");
INSERT INTO sorcerer_spells VALUES (NULL, "Mending");
INSERT INTO sorcerer_spells VALUES (NULL, "Message");
INSERT INTO sorcerer_spells VALUES (NULL, "Minor Illusion");
INSERT INTO sorcerer_spells VALUES (NULL, "Poison Spray");
INSERT INTO sorcerer_spells VALUES (NULL, "Prestidigitation");
INSERT INTO sorcerer_spells VALUES (NULL, "Ray of Frost");
INSERT INTO sorcerer_spells VALUES (NULL, "Shocking Grasp");
INSERT INTO sorcerer_spells VALUES (NULL, "True Strike");
INSERT INTO sorcerer_spells VALUES (NULL, "Burning Hands");									-- 1
INSERT INTO sorcerer_spells VALUES (NULL, "Charm Person");
INSERT INTO sorcerer_spells VALUES (NULL, "Chromatic Orb");
INSERT INTO sorcerer_spells VALUES (NULL, "Color Spray");
INSERT INTO sorcerer_spells VALUES (NULL, "Comprehend Languages");
INSERT INTO sorcerer_spells VALUES (NULL, "Detect Magic");
INSERT INTO sorcerer_spells VALUES (NULL, "Disguise Self");
INSERT INTO sorcerer_spells VALUES (NULL, "Expeditious Retreat");
INSERT INTO sorcerer_spells VALUES (NULL, "False Life");
INSERT INTO sorcerer_spells VALUES (NULL, "Feather Fall");
INSERT INTO sorcerer_spells VALUES (NULL, "Fog Cloud");
INSERT INTO sorcerer_spells VALUES (NULL, "Jump");
INSERT INTO sorcerer_spells VALUES (NULL, "Mage Armor");
INSERT INTO sorcerer_spells VALUES (NULL, "Magic Missile");
INSERT INTO sorcerer_spells VALUES (NULL, "Ray of Sickness");
INSERT INTO sorcerer_spells VALUES (NULL, "Shield");
INSERT INTO sorcerer_spells VALUES (NULL, "Silent Image");
INSERT INTO sorcerer_spells VALUES (NULL, "Sleep");
INSERT INTO sorcerer_spells VALUES (NULL, "Thunderwave");
INSERT INTO sorcerer_spells VALUES (NULL, "Witch Bolt");
INSERT INTO sorcerer_spells VALUES (NULL, "Alter Self");											-- 2
INSERT INTO sorcerer_spells VALUES (NULL, "Blindness/Deafness");
INSERT INTO sorcerer_spells VALUES (NULL, "Blur");
INSERT INTO sorcerer_spells VALUES (NULL, "Cloud of Daggers");
INSERT INTO sorcerer_spells VALUES (NULL, "Crown of Madness");
INSERT INTO sorcerer_spells VALUES (NULL, "Darkness");
INSERT INTO sorcerer_spells VALUES (NULL, "Darkvision");
INSERT INTO sorcerer_spells VALUES (NULL, "Detect Thoughts");
INSERT INTO sorcerer_spells VALUES (NULL, "Enhance Ability");
INSERT INTO sorcerer_spells VALUES (NULL, "Enlarge/Reduce");
INSERT INTO sorcerer_spells VALUES (NULL, "Gust of Wind");
INSERT INTO sorcerer_spells VALUES (NULL, "Hold Person");
INSERT INTO sorcerer_spells VALUES (NULL, "Invisibility");
INSERT INTO sorcerer_spells VALUES (NULL, "Knock");
INSERT INTO sorcerer_spells VALUES (NULL, "Levitate");
INSERT INTO sorcerer_spells VALUES (NULL, "Mirror Image");
INSERT INTO sorcerer_spells VALUES (NULL, "Misty Step");
INSERT INTO sorcerer_spells VALUES (NULL, "Phantasmal Force");
INSERT INTO sorcerer_spells VALUES (NULL, "Scorching Ray");
INSERT INTO sorcerer_spells VALUES (NULL, "See Invisibility");
INSERT INTO sorcerer_spells VALUES (NULL, "Shatter");
INSERT INTO sorcerer_spells VALUES (NULL, "Spider Climb");
INSERT INTO sorcerer_spells VALUES (NULL, "Suggestion");
INSERT INTO sorcerer_spells VALUES (NULL, "Web");
INSERT INTO sorcerer_spells VALUES (NULL, "Blink");													-- 3
INSERT INTO sorcerer_spells VALUES (NULL, "Clairvoyance");
INSERT INTO sorcerer_spells VALUES (NULL, "Counterspell");
INSERT INTO sorcerer_spells VALUES (NULL, "Daylight");
INSERT INTO sorcerer_spells VALUES (NULL, "Dispel Magic");
INSERT INTO sorcerer_spells VALUES (NULL, "Fear");
INSERT INTO sorcerer_spells VALUES (NULL, "Fireball");
INSERT INTO sorcerer_spells VALUES (NULL, "Fly");
INSERT INTO sorcerer_spells VALUES (NULL, "Gaseous Form");
INSERT INTO sorcerer_spells VALUES (NULL, "Haste");
INSERT INTO sorcerer_spells VALUES (NULL, "Hypnotic Pattern");
INSERT INTO sorcerer_spells VALUES (NULL, "Lightning Bolt");
INSERT INTO sorcerer_spells VALUES (NULL, "Major Image");
INSERT INTO sorcerer_spells VALUES (NULL, "Protection from Energy");
INSERT INTO sorcerer_spells VALUES (NULL, "Sleet Storm");
INSERT INTO sorcerer_spells VALUES (NULL, "Slow");
INSERT INTO sorcerer_spells VALUES (NULL, "Stinking Cloud");
INSERT INTO sorcerer_spells VALUES (NULL, "Tongues");
INSERT INTO sorcerer_spells VALUES (NULL, "Water Breathing");
INSERT INTO sorcerer_spells VALUES (NULL, "Water Walk");
INSERT INTO sorcerer_spells VALUES (NULL, "Banishment");											-- 4
INSERT INTO sorcerer_spells VALUES (NULL, "Blight");
INSERT INTO sorcerer_spells VALUES (NULL, "Confusion");
INSERT INTO sorcerer_spells VALUES (NULL, "Dimension Door");
INSERT INTO sorcerer_spells VALUES (NULL, "Dominate Beast");
INSERT INTO sorcerer_spells VALUES (NULL, "Greater Invisibility");
INSERT INTO sorcerer_spells VALUES (NULL, "Ice Storm");
INSERT INTO sorcerer_spells VALUES (NULL, "Polymorph");
INSERT INTO sorcerer_spells VALUES (NULL, "Stoneskin");
INSERT INTO sorcerer_spells VALUES (NULL, "Wall of Fire");
INSERT INTO sorcerer_spells VALUES (NULL, "Animate Objects");								-- 5
INSERT INTO sorcerer_spells VALUES (NULL, "Cloudkill");
INSERT INTO sorcerer_spells VALUES (NULL, "Cone of Cold");
INSERT INTO sorcerer_spells VALUES (NULL, "Creation");
INSERT INTO sorcerer_spells VALUES (NULL, "Dominate Person");
INSERT INTO sorcerer_spells VALUES (NULL, "Hold Monster");
INSERT INTO sorcerer_spells VALUES (NULL, "Insect Plague");
INSERT INTO sorcerer_spells VALUES (NULL, "Seeming");
INSERT INTO sorcerer_spells VALUES (NULL, "Telekinesis");
INSERT INTO sorcerer_spells VALUES (NULL, "Teleportation Circle");
INSERT INTO sorcerer_spells VALUES (NULL, "Wall of Stone");
INSERT INTO sorcerer_spells VALUES (NULL, "Arcane Gate");										-- 6
INSERT INTO sorcerer_spells VALUES (NULL, "Chain Lightning");
INSERT INTO sorcerer_spells VALUES (NULL, "Circle of Death");
INSERT INTO sorcerer_spells VALUES (NULL, "Disintegrate");
INSERT INTO sorcerer_spells VALUES (NULL, "Eyebite");
INSERT INTO sorcerer_spells VALUES (NULL, "Globe of Invulnerability");
INSERT INTO sorcerer_spells VALUES (NULL, "Mass Suggestion");
INSERT INTO sorcerer_spells VALUES (NULL, "Move Earth");
INSERT INTO sorcerer_spells VALUES (NULL, "Sunbeam");
INSERT INTO sorcerer_spells VALUES (NULL, "True Seeing");
INSERT INTO sorcerer_spells VALUES (NULL, "Delayed Blast Fireball");					-- 7
INSERT INTO sorcerer_spells VALUES (NULL, "Etherealness");
INSERT INTO sorcerer_spells VALUES (NULL, "Finger of Death");
INSERT INTO sorcerer_spells VALUES (NULL, "Fire Storm");
INSERT INTO sorcerer_spells VALUES (NULL, "Plane Shift");
INSERT INTO sorcerer_spells VALUES (NULL, "Prismatic Spray");
INSERT INTO sorcerer_spells VALUES (NULL, "Reverse Gravity");
INSERT INTO sorcerer_spells VALUES (NULL, "Teleport");
INSERT INTO sorcerer_spells VALUES (NULL, "Dominate Monster");								-- 8
INSERT INTO sorcerer_spells VALUES (NULL, "Earthquake");
INSERT INTO sorcerer_spells VALUES (NULL, "Incendiary Cloud");
INSERT INTO sorcerer_spells VALUES (NULL, "Power Word Stun");
INSERT INTO sorcerer_spells VALUES (NULL, "Sunburst");
INSERT INTO sorcerer_spells VALUES (NULL, "Gate");														-- 9
INSERT INTO sorcerer_spells VALUES (NULL, "Meteor Swarm");
INSERT INTO sorcerer_spells VALUES (NULL, "Power Word Kill");
INSERT INTO sorcerer_spells VALUES (NULL, "Time Stop");
INSERT INTO sorcerer_spells VALUES (NULL, "Wish");
-- XGE
INSERT INTO sorcerer_spells VALUES (NULL, "Control Flames");
INSERT INTO sorcerer_spells VALUES (NULL, "Create Bonfire");
INSERT INTO sorcerer_spells VALUES (NULL, "Frostbite");
INSERT INTO sorcerer_spells VALUES (NULL, "Gust");
INSERT INTO sorcerer_spells VALUES (NULL, "Infestation");
INSERT INTO sorcerer_spells VALUES (NULL, "Mold Earth");
INSERT INTO sorcerer_spells VALUES (NULL, "Shape Water");
INSERT INTO sorcerer_spells VALUES (NULL, "Thunderclap");
INSERT INTO sorcerer_spells VALUES (NULL, "Absorb Elements");
INSERT INTO sorcerer_spells VALUES (NULL, "Catapult");
INSERT INTO sorcerer_spells VALUES (NULL, "Chaos Bolt");
INSERT INTO sorcerer_spells VALUES (NULL, "Earth Tremor");
INSERT INTO sorcerer_spells VALUES (NULL, "Ice Knife");
INSERT INTO sorcerer_spells VALUES (NULL, "Aganazzar's Scorcher");
INSERT INTO sorcerer_spells VALUES (NULL, "Dragon's Breath");
INSERT INTO sorcerer_spells VALUES (NULL, "Dust Devil");
INSERT INTO sorcerer_spells VALUES (NULL, "Earthbind");
INSERT INTO sorcerer_spells VALUES (NULL, "Maximilian's Earthen Grasp");
INSERT INTO sorcerer_spells VALUES (NULL, "Mind Spike");
INSERT INTO sorcerer_spells VALUES (NULL, "Pyrotechnics");
INSERT INTO sorcerer_spells VALUES (NULL, "Shadow Blade");
INSERT INTO sorcerer_spells VALUES (NULL, "Snilloc's Snowball Swarm");
INSERT INTO sorcerer_spells VALUES (NULL, "Warding Wind");
INSERT INTO sorcerer_spells VALUES (NULL, "Catnap");
INSERT INTO sorcerer_spells VALUES (NULL, "Enemies Abound");
INSERT INTO sorcerer_spells VALUES (NULL, "Erupting Earth");
INSERT INTO sorcerer_spells VALUES (NULL, "Flame Arrows");
INSERT INTO sorcerer_spells VALUES (NULL, "Melf's Minute Meteors");
INSERT INTO sorcerer_spells VALUES (NULL, "Thunder Step");
INSERT INTO sorcerer_spells VALUES (NULL, "Tidal Wave");
INSERT INTO sorcerer_spells VALUES (NULL, "Wall of Water");
INSERT INTO sorcerer_spells VALUES (NULL, "Charm Monster");
INSERT INTO sorcerer_spells VALUES (NULL, "Sickening Radiance");
INSERT INTO sorcerer_spells VALUES (NULL, "Storm Sphere");
INSERT INTO sorcerer_spells VALUES (NULL, "Vitriolic Sphere");
INSERT INTO sorcerer_spells VALUES (NULL, "Watery Sphere");
INSERT INTO sorcerer_spells VALUES (NULL, "Control Winds");
INSERT INTO sorcerer_spells VALUES (NULL, "Enervation");
INSERT INTO sorcerer_spells VALUES (NULL, "Far Step");
INSERT INTO sorcerer_spells VALUES (NULL, "Immolation");
INSERT INTO sorcerer_spells VALUES (NULL, "Skill Empowerment");
INSERT INTO sorcerer_spells VALUES (NULL, "Synaptic Static");
INSERT INTO sorcerer_spells VALUES (NULL, "Wall of Light");
INSERT INTO sorcerer_spells VALUES (NULL, "Investiture of Flame");
INSERT INTO sorcerer_spells VALUES (NULL, "Investiture of Ice");
INSERT INTO sorcerer_spells VALUES (NULL, "Investiture of Stone");
INSERT INTO sorcerer_spells VALUES (NULL, "Investiture of Wind");
INSERT INTO sorcerer_spells VALUES (NULL, "Mental Prison");
INSERT INTO sorcerer_spells VALUES (NULL, "Scatter");
INSERT INTO sorcerer_spells VALUES (NULL, "Crown of Stars");
INSERT INTO sorcerer_spells VALUES (NULL, "Power Word Pain");
INSERT INTO sorcerer_spells VALUES (NULL, "Whirlwind");
INSERT INTO sorcerer_spells VALUES (NULL, "Abi-Dalzim's Horrid Wilting");
INSERT INTO sorcerer_spells VALUES (NULL, "Mass Polymorph");
INSERT INTO sorcerer_spells VALUES (NULL, "Psychic Scream");
-- TCE
INSERT INTO sorcerer_spells VALUES (NULL, "Booming Blade");
INSERT INTO sorcerer_spells VALUES (NULL, "Green-Flame Blade");
INSERT INTO sorcerer_spells VALUES (NULL, "Lightning Lure");
INSERT INTO sorcerer_spells VALUES (NULL, "Mind Sliver");
INSERT INTO sorcerer_spells VALUES (NULL, "Sword Burst");
INSERT INTO sorcerer_spells VALUES (NULL, "Tasha's Caustic Brew");
INSERT INTO sorcerer_spells VALUES (NULL, "Tasha's Mind Whip");
INSERT INTO sorcerer_spells VALUES (NULL, "Intellect Fortress");
INSERT INTO sorcerer_spells VALUES (NULL, "Tasha's Otherworldly Guise");
INSERT INTO sorcerer_spells VALUES (NULL, "Dream of the Blue Veil");
INSERT INTO sorcerer_spells VALUES (NULL, "Blade of Disaster");
-- FTD
INSERT INTO sorcerer_spells VALUES (NULL, "Ashardalon's Stride");
INSERT INTO sorcerer_spells VALUES (NULL, "Draconic Transformation");
INSERT INTO sorcerer_spells VALUES (NULL, "Fizban's Platinum Shield");
INSERT INTO sorcerer_spells VALUES (NULL, "Nathair's Mischief");
INSERT INTO sorcerer_spells VALUES (NULL, "Raulothim's Psychic Lance");
INSERT INTO sorcerer_spells VALUES (NULL, "Rime's Binding Ice");
INSERT INTO sorcerer_spells VALUES (NULL, "Summon Draconic Spirit");

-- warlock_spells SPELLS
-- PHB
INSERT INTO warlock_spells VALUES (NULL, "Blade Ward");											-- 0
INSERT INTO warlock_spells VALUES (NULL, "Chill Touch");
INSERT INTO warlock_spells VALUES (NULL, "Eldritch Blast");
INSERT INTO warlock_spells VALUES (NULL, "Friends");
INSERT INTO warlock_spells VALUES (NULL, "Mage Hand");
INSERT INTO warlock_spells VALUES (NULL, "Minor Illusion");
INSERT INTO warlock_spells VALUES (NULL, "Poison Spray");
INSERT INTO warlock_spells VALUES (NULL, "Prestidigitation");
INSERT INTO warlock_spells VALUES (NULL, "True Strike");
INSERT INTO warlock_spells VALUES (NULL, "Armor of Agathys");								-- 1
INSERT INTO warlock_spells VALUES (NULL, "Arms of Hadar");
INSERT INTO warlock_spells VALUES (NULL, "Charm Person");
INSERT INTO warlock_spells VALUES (NULL, "Comprehend Languages");
INSERT INTO warlock_spells VALUES (NULL, "Expeditious Retreat");
INSERT INTO warlock_spells VALUES (NULL, "Hellish Rebuke");
INSERT INTO warlock_spells VALUES (NULL, "Hex");
INSERT INTO warlock_spells VALUES (NULL, "Illusory Script");
INSERT INTO warlock_spells VALUES (NULL, "Protection from Evil and Good");
INSERT INTO warlock_spells VALUES (NULL, "Unseen Servant");
INSERT INTO warlock_spells VALUES (NULL, "Witch Bolt");
INSERT INTO warlock_spells VALUES (NULL, "Cloud of Daggers");								-- 2
INSERT INTO warlock_spells VALUES (NULL, "Crown of Madness");
INSERT INTO warlock_spells VALUES (NULL, "Darkness");
INSERT INTO warlock_spells VALUES (NULL, "Enthrall");
INSERT INTO warlock_spells VALUES (NULL, "Hold Person");
INSERT INTO warlock_spells VALUES (NULL, "Invisibility");
INSERT INTO warlock_spells VALUES (NULL, "Mirror Image");
INSERT INTO warlock_spells VALUES (NULL, "Misty Step");
INSERT INTO warlock_spells VALUES (NULL, "Ray of Enfeeblement");
INSERT INTO warlock_spells VALUES (NULL, "Shatter");
INSERT INTO warlock_spells VALUES (NULL, "Spider Climb");
INSERT INTO warlock_spells VALUES (NULL, "Suggestion");
INSERT INTO warlock_spells VALUES (NULL, "Counterspell");										-- 3
INSERT INTO warlock_spells VALUES (NULL, "Dispel Magic");
INSERT INTO warlock_spells VALUES (NULL, "Fear");
INSERT INTO warlock_spells VALUES (NULL, "Fly");
INSERT INTO warlock_spells VALUES (NULL, "Gaseous Form");
INSERT INTO warlock_spells VALUES (NULL, "Hunger of Hadar");
INSERT INTO warlock_spells VALUES (NULL, "Hypnotic Pattern");
INSERT INTO warlock_spells VALUES (NULL, "Magic Circle");
INSERT INTO warlock_spells VALUES (NULL, "Major Image");
INSERT INTO warlock_spells VALUES (NULL, "Remove Curse");
INSERT INTO warlock_spells VALUES (NULL, "Tongues");
INSERT INTO warlock_spells VALUES (NULL, "Vampiric Touch");
INSERT INTO warlock_spells VALUES (NULL, "Banishment");											-- 4
INSERT INTO warlock_spells VALUES (NULL, "Blight");
INSERT INTO warlock_spells VALUES (NULL, "Dimension Door");
INSERT INTO warlock_spells VALUES (NULL, "Hallucinatory Terrain");
INSERT INTO warlock_spells VALUES (NULL, "Contact Other Plane");							-- 5
INSERT INTO warlock_spells VALUES (NULL, "Dream");
INSERT INTO warlock_spells VALUES (NULL, "Hold Monster");
INSERT INTO warlock_spells VALUES (NULL, "Scrying");
INSERT INTO warlock_spells VALUES (NULL, "Arcane Gate");											-- 6
INSERT INTO warlock_spells VALUES (NULL, "Circle of Death");
INSERT INTO warlock_spells VALUES (NULL, "Conjure Fey");
INSERT INTO warlock_spells VALUES (NULL, "Create Undead");
INSERT INTO warlock_spells VALUES (NULL, "Eyebite");
INSERT INTO warlock_spells VALUES (NULL, "Flesh to Stone");
INSERT INTO warlock_spells VALUES (NULL, "Mass Suggestion");
INSERT INTO warlock_spells VALUES (NULL, "True Seeing");
INSERT INTO warlock_spells VALUES (NULL, "Etherealness");										-- 7
INSERT INTO warlock_spells VALUES (NULL, "Finger of Death");
INSERT INTO warlock_spells VALUES (NULL, "Forcecage");
INSERT INTO warlock_spells VALUES (NULL, "Plane Shift");
INSERT INTO warlock_spells VALUES (NULL, "Demiplane");												-- 8
INSERT INTO warlock_spells VALUES (NULL, "Dominate Monster");
INSERT INTO warlock_spells VALUES (NULL, "Feeblemind");
INSERT INTO warlock_spells VALUES (NULL, "Glibness");
INSERT INTO warlock_spells VALUES (NULL, "Power Word Stun");
INSERT INTO warlock_spells VALUES (NULL, "Astral Projection");								-- 9
INSERT INTO warlock_spells VALUES (NULL, "Foresight");
INSERT INTO warlock_spells VALUES (NULL, "Imprisonment");
INSERT INTO warlock_spells VALUES (NULL, "Power Word Kill");
INSERT INTO warlock_spells VALUES (NULL, "True Polymorph");
-- Additional spells based on invocations
-- INSERT INTO warlock_spells VALUES (NULL, "Dissonant Whispers");
-- INSERT INTO warlock_spells VALUES (NULL, "Tasha's Hideous Laughter");
-- INSERT INTO warlock_spells VALUES (NULL, "Detect Thoughts");
-- INSERT INTO warlock_spells VALUES (NULL, "Phantasmal Force");
-- INSERT INTO warlock_spells VALUES (NULL, "Clairvoyance");
-- INSERT INTO warlock_spells VALUES (NULL, "Sending");
-- INSERT INTO warlock_spells VALUES (NULL, "Dominate Beast");
-- INSERT INTO warlock_spells VALUES (NULL, "Evard's Black Tentacles");
-- INSERT INTO warlock_spells VALUES (NULL, "Dominate Person");
-- INSERT INTO warlock_spells VALUES (NULL, "Telekinesis");
-- INSERT INTO warlock_spells VALUES (NULL, "Alter Self");
-- INSERT INTO warlock_spells VALUES (NULL, "Arcane Eye");
-- INSERT INTO warlock_spells VALUES (NULL, "Bane");
-- INSERT INTO warlock_spells VALUES (NULL, "Bestow Curse");
-- INSERT INTO warlock_spells VALUES (NULL, "Compulsion");
-- INSERT INTO warlock_spells VALUES (NULL, "Confusion");
-- INSERT INTO warlock_spells VALUES (NULL, "Conjure Elemental");
-- INSERT INTO warlock_spells VALUES (NULL, "Detect Magic");
-- INSERT INTO warlock_spells VALUES (NULL, "Disguise Self");
-- INSERT INTO warlock_spells VALUES (NULL, "False Life");
-- INSERT INTO warlock_spells VALUES (NULL, "Hold Monster");
-- INSERT INTO warlock_spells VALUES (NULL, "Jump");
-- INSERT INTO warlock_spells VALUES (NULL, "Levitate");
-- INSERT INTO warlock_spells VALUES (NULL, "Mage Armour");
-- INSERT INTO warlock_spells VALUES (NULL, "Polymorph");
-- INSERT INTO warlock_spells VALUES (NULL, "Silent Image");
-- INSERT INTO warlock_spells VALUES (NULL, "Slow");
-- INSERT INTO warlock_spells VALUES (NULL, "Speak with Animals");
-- INSERT INTO warlock_spells VALUES (NULL, "Speak with Dead");
-- XGE
INSERT INTO warlock_spells VALUES (NULL, "Create Bonfire");
INSERT INTO warlock_spells VALUES (NULL, "Frostbite");
INSERT INTO warlock_spells VALUES (NULL, "Infestation");
INSERT INTO warlock_spells VALUES (NULL, "Magic Stone");
INSERT INTO warlock_spells VALUES (NULL, "Thunderclap");
INSERT INTO warlock_spells VALUES (NULL, "Toll the Dead");
INSERT INTO warlock_spells VALUES (NULL, "Cause Fear");
INSERT INTO warlock_spells VALUES (NULL, "Earthbind");
INSERT INTO warlock_spells VALUES (NULL, "Mind Spike");
INSERT INTO warlock_spells VALUES (NULL, "Shadow Blade");
INSERT INTO warlock_spells VALUES (NULL, "Enemies Abound");
INSERT INTO warlock_spells VALUES (NULL, "Thunder Step");
INSERT INTO warlock_spells VALUES (NULL, "Summon Lesser Demons");
INSERT INTO warlock_spells VALUES (NULL, "Charm Monster");
INSERT INTO warlock_spells VALUES (NULL, "Elemental Bane");
INSERT INTO warlock_spells VALUES (NULL, "Shadow of Moil");
INSERT INTO warlock_spells VALUES (NULL, "Sickening Radiance");
INSERT INTO warlock_spells VALUES (NULL, "Summon Greater Demon");
INSERT INTO warlock_spells VALUES (NULL, "Danse Macabre");
INSERT INTO warlock_spells VALUES (NULL, "Enervation");
INSERT INTO warlock_spells VALUES (NULL, "Far Step");
INSERT INTO warlock_spells VALUES (NULL, "Infernal Calling");
INSERT INTO warlock_spells VALUES (NULL, "Negative Energy Flood");
INSERT INTO warlock_spells VALUES (NULL, "Synaptic Static");
INSERT INTO warlock_spells VALUES (NULL, "Wall of Light");
INSERT INTO warlock_spells VALUES (NULL, "Investiture of Flame");
INSERT INTO warlock_spells VALUES (NULL, "Investiture of Ice");
INSERT INTO warlock_spells VALUES (NULL, "Investiture of Stone");
INSERT INTO warlock_spells VALUES (NULL, "Investiture of Wind");
INSERT INTO warlock_spells VALUES (NULL, "Mental Prison");
INSERT INTO warlock_spells VALUES (NULL, "Scatter");
INSERT INTO warlock_spells VALUES (NULL, "Soul Cage");
INSERT INTO warlock_spells VALUES (NULL, "Crown of Stars");
INSERT INTO warlock_spells VALUES (NULL, "Power Word Pain");
INSERT INTO warlock_spells VALUES (NULL, "Maddening Darkness");
INSERT INTO warlock_spells VALUES (NULL, "Psychic Scream");
-- TCE
INSERT INTO warlock_spells VALUES (NULL, "Booming Blade");
INSERT INTO warlock_spells VALUES (NULL, "Green-Flame Blade");
INSERT INTO warlock_spells VALUES (NULL, "Lightning Lure");
INSERT INTO warlock_spells VALUES (NULL, "Mind Sliver");
INSERT INTO warlock_spells VALUES (NULL, "Sword Burst");
INSERT INTO warlock_spells VALUES (NULL, "Intellect Fortress");
INSERT INTO warlock_spells VALUES (NULL, "Spirit Shroud");
INSERT INTO warlock_spells VALUES (NULL, "Summon Fey");
INSERT INTO warlock_spells VALUES (NULL, "Summon Shadowspawn");
INSERT INTO warlock_spells VALUES (NULL, "Summon Undead");
INSERT INTO warlock_spells VALUES (NULL, "Summon Aberration");
INSERT INTO warlock_spells VALUES (NULL, "Summon Fiend");
INSERT INTO warlock_spells VALUES (NULL, "Tasha's Otherworldly Guise");
INSERT INTO warlock_spells VALUES (NULL, "Dream of the Blue Veil");
INSERT INTO warlock_spells VALUES (NULL, "Blade of Disaster");
-- FTD
INSERT INTO warlock_spells VALUES (NULL, "Summon Draconic Spirit");

-- wizard_spells SPELLS
-- PHB
INSERT INTO wizard_spells VALUES (NULL, "Acid Splash");												-- 0
INSERT INTO wizard_spells VALUES (NULL, "Blade Ward");
INSERT INTO wizard_spells VALUES (NULL, "Chill Touch");
INSERT INTO wizard_spells VALUES (NULL, "Dancing Lights");
INSERT INTO wizard_spells VALUES (NULL, "Fire Bolt");
INSERT INTO wizard_spells VALUES (NULL, "Friends");
INSERT INTO wizard_spells VALUES (NULL, "Light");
INSERT INTO wizard_spells VALUES (NULL, "Mage Hand");
INSERT INTO wizard_spells VALUES (NULL, "Mending");
INSERT INTO wizard_spells VALUES (NULL, "Message");
INSERT INTO wizard_spells VALUES (NULL, "Minor Illusion");
INSERT INTO wizard_spells VALUES (NULL, "Poison Spray");
INSERT INTO wizard_spells VALUES (NULL, "Prestidigitation");
INSERT INTO wizard_spells VALUES (NULL, "Ray of Frost");
INSERT INTO wizard_spells VALUES (NULL, "Shocking Grasp");
INSERT INTO wizard_spells VALUES (NULL, "True Strike");
INSERT INTO wizard_spells VALUES (NULL, "Alarm");															-- 1
INSERT INTO wizard_spells VALUES (NULL, "Burning Hands");
INSERT INTO wizard_spells VALUES (NULL, "Charm Person");
INSERT INTO wizard_spells VALUES (NULL, "Chromatic Orb");
INSERT INTO wizard_spells VALUES (NULL, "Color Spray");
INSERT INTO wizard_spells VALUES (NULL, "Comprehend Languages");
INSERT INTO wizard_spells VALUES (NULL, "Detect Magic");
INSERT INTO wizard_spells VALUES (NULL, "Disguise Self");
INSERT INTO wizard_spells VALUES (NULL, "Expeditious Retreat");
INSERT INTO wizard_spells VALUES (NULL, "False Life");
INSERT INTO wizard_spells VALUES (NULL, "Feather Fall");
INSERT INTO wizard_spells VALUES (NULL, "Find Familiar");
INSERT INTO wizard_spells VALUES (NULL, "Fog Cloud");
INSERT INTO wizard_spells VALUES (NULL, "Grease");
INSERT INTO wizard_spells VALUES (NULL, "Identify");
INSERT INTO wizard_spells VALUES (NULL, "Illusory Script");
INSERT INTO wizard_spells VALUES (NULL, "Jump");
INSERT INTO wizard_spells VALUES (NULL, "Longstrider");
INSERT INTO wizard_spells VALUES (NULL, "Mage Armor");
INSERT INTO wizard_spells VALUES (NULL, "Magic Missile");
INSERT INTO wizard_spells VALUES (NULL, "Protection from Evil and Good");
INSERT INTO wizard_spells VALUES (NULL, "Ray of Sickness");
INSERT INTO wizard_spells VALUES (NULL, "Shield");
INSERT INTO wizard_spells VALUES (NULL, "Silent Image");
INSERT INTO wizard_spells VALUES (NULL, "Sleep");
INSERT INTO wizard_spells VALUES (NULL, "Tasha's Hideous Laughter");
INSERT INTO wizard_spells VALUES (NULL, "Tenser's Floating Disk");
INSERT INTO wizard_spells VALUES (NULL, "Thunderwave");
INSERT INTO wizard_spells VALUES (NULL, "Unseen Servant");
INSERT INTO wizard_spells VALUES (NULL, "Witch Bolt");
INSERT INTO wizard_spells VALUES (NULL, "Alter Self");													-- 2
INSERT INTO wizard_spells VALUES (NULL, "Arcane Lock");
INSERT INTO wizard_spells VALUES (NULL, "Blindness/Deafness");
INSERT INTO wizard_spells VALUES (NULL, "Blur");
INSERT INTO wizard_spells VALUES (NULL, "Cloud of Daggers");
INSERT INTO wizard_spells VALUES (NULL, "Continual Flame");
INSERT INTO wizard_spells VALUES (NULL, "Crown of Madness");
INSERT INTO wizard_spells VALUES (NULL, "Darkness");
INSERT INTO wizard_spells VALUES (NULL, "Darkvision");
INSERT INTO wizard_spells VALUES (NULL, "Detect Thoughts");
INSERT INTO wizard_spells VALUES (NULL, "Enlarge/Reduce");
INSERT INTO wizard_spells VALUES (NULL, "Flaming Sphere");
INSERT INTO wizard_spells VALUES (NULL, "Gentle Repose");
INSERT INTO wizard_spells VALUES (NULL, "Gust of Wind");
INSERT INTO wizard_spells VALUES (NULL, "Hold Person");
INSERT INTO wizard_spells VALUES (NULL, "Invisibility");
INSERT INTO wizard_spells VALUES (NULL, "Knock");
INSERT INTO wizard_spells VALUES (NULL, "Levitate");
INSERT INTO wizard_spells VALUES (NULL, "Locate Object");
INSERT INTO wizard_spells VALUES (NULL, "Magic Mouth");
INSERT INTO wizard_spells VALUES (NULL, "Magic Weapon");
INSERT INTO wizard_spells VALUES (NULL, "Melf's Acid Arrow");
INSERT INTO wizard_spells VALUES (NULL, "Mirror Image");
INSERT INTO wizard_spells VALUES (NULL, "Misty Step");
INSERT INTO wizard_spells VALUES (NULL, "Nystul's Magic Aura");
INSERT INTO wizard_spells VALUES (NULL, "Phantasmal Force");
INSERT INTO wizard_spells VALUES (NULL, "Ray of Enfeeblement");
INSERT INTO wizard_spells VALUES (NULL, "Rope Trick");
INSERT INTO wizard_spells VALUES (NULL, "Scorching Ray");
INSERT INTO wizard_spells VALUES (NULL, "See Invisibility");
INSERT INTO wizard_spells VALUES (NULL, "Shatter");
INSERT INTO wizard_spells VALUES (NULL, "Spider Climb");
INSERT INTO wizard_spells VALUES (NULL, "Suggestion");
INSERT INTO wizard_spells VALUES (NULL, "Web");
INSERT INTO wizard_spells VALUES (NULL, "Animate Dead");												-- 3
INSERT INTO wizard_spells VALUES (NULL, "Bestow Curse");
INSERT INTO wizard_spells VALUES (NULL, "Blink");
INSERT INTO wizard_spells VALUES (NULL, "Clairvoyance");
INSERT INTO wizard_spells VALUES (NULL, "Counterspell");
INSERT INTO wizard_spells VALUES (NULL, "Dispel Magic");
INSERT INTO wizard_spells VALUES (NULL, "Fear");
INSERT INTO wizard_spells VALUES (NULL, "Feign Death");
INSERT INTO wizard_spells VALUES (NULL, "Fireball");
INSERT INTO wizard_spells VALUES (NULL, "Fly");
INSERT INTO wizard_spells VALUES (NULL, "Gaseous Form");
INSERT INTO wizard_spells VALUES (NULL, "Glyph of Warding");
INSERT INTO wizard_spells VALUES (NULL, "Haste");
INSERT INTO wizard_spells VALUES (NULL, "Hypnotic Pattern");
INSERT INTO wizard_spells VALUES (NULL, "Leomund's Tiny Hut");
INSERT INTO wizard_spells VALUES (NULL, "Lightning Bolt");
INSERT INTO wizard_spells VALUES (NULL, "Magic Circle");
INSERT INTO wizard_spells VALUES (NULL, "Major Image");
INSERT INTO wizard_spells VALUES (NULL, "Nondetection");
INSERT INTO wizard_spells VALUES (NULL, "Phantom Steed");
INSERT INTO wizard_spells VALUES (NULL, "Protection from Energy");
INSERT INTO wizard_spells VALUES (NULL, "Remove Curse");
INSERT INTO wizard_spells VALUES (NULL, "Sending");
INSERT INTO wizard_spells VALUES (NULL, "Sleet Storm");
INSERT INTO wizard_spells VALUES (NULL, "Slow");
INSERT INTO wizard_spells VALUES (NULL, "Stinking Cloud");
INSERT INTO wizard_spells VALUES (NULL, "Tongues");
INSERT INTO wizard_spells VALUES (NULL, "Vampiric Touch");
INSERT INTO wizard_spells VALUES (NULL, "Water Breathing");
INSERT INTO wizard_spells VALUES (NULL, "Arcane Eye");													-- 4
INSERT INTO wizard_spells VALUES (NULL, "Banishment");
INSERT INTO wizard_spells VALUES (NULL, "Blight");
INSERT INTO wizard_spells VALUES (NULL, "Confusion");
INSERT INTO wizard_spells VALUES (NULL, "Conjure Minor Elementals");
INSERT INTO wizard_spells VALUES (NULL, "Control Water");
INSERT INTO wizard_spells VALUES (NULL, "Dimension Door");
INSERT INTO wizard_spells VALUES (NULL, "Evard's Black Tentacles");
INSERT INTO wizard_spells VALUES (NULL, "Fabricate");
INSERT INTO wizard_spells VALUES (NULL, "Fire Shield");
INSERT INTO wizard_spells VALUES (NULL, "Greater Invisibility");
INSERT INTO wizard_spells VALUES (NULL, "Hallucinatory Terrain");
INSERT INTO wizard_spells VALUES (NULL, "Ice Storm");
INSERT INTO wizard_spells VALUES (NULL, "Leomund's Secret Chest");
INSERT INTO wizard_spells VALUES (NULL, "Locate Creature");
INSERT INTO wizard_spells VALUES (NULL, "Mordenkainen's Faithful Hound");
INSERT INTO wizard_spells VALUES (NULL, "Mordenkainen's Private Sanctum");
INSERT INTO wizard_spells VALUES (NULL, "Otiluke's Resilient Sphere");
INSERT INTO wizard_spells VALUES (NULL, "Phantasmal Killer");
INSERT INTO wizard_spells VALUES (NULL, "Polymorph");
INSERT INTO wizard_spells VALUES (NULL, "Stone Shape");
INSERT INTO wizard_spells VALUES (NULL, "Stoneskin");
INSERT INTO wizard_spells VALUES (NULL, "Wall of Fire");
INSERT INTO wizard_spells VALUES (NULL, "Animate Objects");										-- 5
INSERT INTO wizard_spells VALUES (NULL, "Bigby's Hand");
INSERT INTO wizard_spells VALUES (NULL, "Cloudkill");
INSERT INTO wizard_spells VALUES (NULL, "Cone of Cold");
INSERT INTO wizard_spells VALUES (NULL, "Conjure Elemental");
INSERT INTO wizard_spells VALUES (NULL, "Contact Other Plane");
INSERT INTO wizard_spells VALUES (NULL, "Creation");
INSERT INTO wizard_spells VALUES (NULL, "Dominate Person");
INSERT INTO wizard_spells VALUES (NULL, "Dream");
INSERT INTO wizard_spells VALUES (NULL, "Geas");
INSERT INTO wizard_spells VALUES (NULL, "Hold Monster");
INSERT INTO wizard_spells VALUES (NULL, "Legend Lore");
INSERT INTO wizard_spells VALUES (NULL, "Mislead");
INSERT INTO wizard_spells VALUES (NULL, "Modify Memory");
INSERT INTO wizard_spells VALUES (NULL, "Passwall");
INSERT INTO wizard_spells VALUES (NULL, "Planar Binding");
INSERT INTO wizard_spells VALUES (NULL, "Rary's Telepathic Bond");
INSERT INTO wizard_spells VALUES (NULL, "Scrying");
INSERT INTO wizard_spells VALUES (NULL, "Seeming");
INSERT INTO wizard_spells VALUES (NULL, "Telekinesis");
INSERT INTO wizard_spells VALUES (NULL, "Teleportation Circle");
INSERT INTO wizard_spells VALUES (NULL, "Wall of Force");
INSERT INTO wizard_spells VALUES (NULL, "Wall of Stone");
INSERT INTO wizard_spells VALUES (NULL, "Arcane Gate");												-- 6
INSERT INTO wizard_spells VALUES (NULL, "Chain Lightning");
INSERT INTO wizard_spells VALUES (NULL, "Circle of Death");
INSERT INTO wizard_spells VALUES (NULL, "Contingency");
INSERT INTO wizard_spells VALUES (NULL, "Create Undead");
INSERT INTO wizard_spells VALUES (NULL, "Disintegrate");
INSERT INTO wizard_spells VALUES (NULL, "Drawmij's Instant Summons");
INSERT INTO wizard_spells VALUES (NULL, "Eyebite");
INSERT INTO wizard_spells VALUES (NULL, "Flesh to Stone");
INSERT INTO wizard_spells VALUES (NULL, "Globe of Invulnerability");
INSERT INTO wizard_spells VALUES (NULL, "Guards and Wards");
INSERT INTO wizard_spells VALUES (NULL, "Magic Jar");
INSERT INTO wizard_spells VALUES (NULL, "Mass Suggestion");
INSERT INTO wizard_spells VALUES (NULL, "Move Earth");
INSERT INTO wizard_spells VALUES (NULL, "Otiluke's Freezing Sphere");
INSERT INTO wizard_spells VALUES (NULL, "Otto's Irresistible Dance");
INSERT INTO wizard_spells VALUES (NULL, "Programmed Illusion");
INSERT INTO wizard_spells VALUES (NULL, "Sunbeam");
INSERT INTO wizard_spells VALUES (NULL, "True Seeing");
INSERT INTO wizard_spells VALUES (NULL, "Wall of Ice");
INSERT INTO wizard_spells VALUES (NULL, "Delayed Blast Fireball");							-- 7
INSERT INTO wizard_spells VALUES (NULL, "Etherealness");
INSERT INTO wizard_spells VALUES (NULL, "Finger of Death");
INSERT INTO wizard_spells VALUES (NULL, "Forcecage");
INSERT INTO wizard_spells VALUES (NULL, "Mirage Arcane");
INSERT INTO wizard_spells VALUES (NULL, "Mordenkainen's Magnificent Mansion");
INSERT INTO wizard_spells VALUES (NULL, "Mordenkainen's Sword");
INSERT INTO wizard_spells VALUES (NULL, "Plane Shift");
INSERT INTO wizard_spells VALUES (NULL, "Prismatic Spray");
INSERT INTO wizard_spells VALUES (NULL, "Project Image");
INSERT INTO wizard_spells VALUES (NULL, "Reverse Gravity");
INSERT INTO wizard_spells VALUES (NULL, "Sequester");
INSERT INTO wizard_spells VALUES (NULL, "Simulacrum");
INSERT INTO wizard_spells VALUES (NULL, "Symbol");
INSERT INTO wizard_spells VALUES (NULL, "Teleport");
INSERT INTO wizard_spells VALUES (NULL, "Antimagic Field");										-- 8
INSERT INTO wizard_spells VALUES (NULL, "Antipathy/Sympathy");
INSERT INTO wizard_spells VALUES (NULL, "Clone");
INSERT INTO wizard_spells VALUES (NULL, "Control Weather");
INSERT INTO wizard_spells VALUES (NULL, "Demiplane");
INSERT INTO wizard_spells VALUES (NULL, "Dominate Monster");
INSERT INTO wizard_spells VALUES (NULL, "Feeblemind");
INSERT INTO wizard_spells VALUES (NULL, "Incendiary Cloud");
INSERT INTO wizard_spells VALUES (NULL, "Maze");
INSERT INTO wizard_spells VALUES (NULL, "Mind Blank");
INSERT INTO wizard_spells VALUES (NULL, "Power Word Stun");
INSERT INTO wizard_spells VALUES (NULL, "Sunburst");
INSERT INTO wizard_spells VALUES (NULL, "Telepathy");
INSERT INTO wizard_spells VALUES (NULL, "Astral Projection");									-- 9
INSERT INTO wizard_spells VALUES (NULL, "Foresight");
INSERT INTO wizard_spells VALUES (NULL, "Gate");
INSERT INTO wizard_spells VALUES (NULL, "Imprisonment");
INSERT INTO wizard_spells VALUES (NULL, "Meteor Swarm");
INSERT INTO wizard_spells VALUES (NULL, "Power Word Kill");
INSERT INTO wizard_spells VALUES (NULL, "Prismatic Wall");
INSERT INTO wizard_spells VALUES (NULL, "Shapechange");
INSERT INTO wizard_spells VALUES (NULL, "Time Stop");
INSERT INTO wizard_spells VALUES (NULL, "True Polymorph");
INSERT INTO wizard_spells VALUES (NULL, "Weird");
INSERT INTO wizard_spells VALUES (NULL, "Wish");
-- XGE
INSERT INTO wizard_spells VALUES (NULL, "Control flames");
INSERT INTO wizard_spells VALUES (NULL, "Create bonfire");
INSERT INTO wizard_spells VALUES (NULL, "Frostbite");
INSERT INTO wizard_spells VALUES (NULL, "Gust");
INSERT INTO wizard_spells VALUES (NULL, "Infestation");
INSERT INTO wizard_spells VALUES (NULL, "Mold earth");
INSERT INTO wizard_spells VALUES (NULL, "Shape water");
INSERT INTO wizard_spells VALUES (NULL, "Thunderclap");
INSERT INTO wizard_spells VALUES (NULL, "Toll the Dead");
INSERT INTO wizard_spells VALUES (NULL, "Absorb elements");
INSERT INTO wizard_spells VALUES (NULL, "Catapult");
INSERT INTO wizard_spells VALUES (NULL, "Cause Fear");
INSERT INTO wizard_spells VALUES (NULL, "Earth tremor");
INSERT INTO wizard_spells VALUES (NULL, "Ice knife");
INSERT INTO wizard_spells VALUES (NULL, "Snare");
INSERT INTO wizard_spells VALUES (NULL, "Aganazzar's scorcher");
INSERT INTO wizard_spells VALUES (NULL, "Dragon's Breath");
INSERT INTO wizard_spells VALUES (NULL, "Dust devil");
INSERT INTO wizard_spells VALUES (NULL, "Earthbind");
INSERT INTO wizard_spells VALUES (NULL, "Maximilian's earthen grasp");
INSERT INTO wizard_spells VALUES (NULL, "Mind Spike");
INSERT INTO wizard_spells VALUES (NULL, "Pyrotechnics");
INSERT INTO wizard_spells VALUES (NULL, "Shadow Blade");
INSERT INTO wizard_spells VALUES (NULL, "Skywrite");
INSERT INTO wizard_spells VALUES (NULL, "Snilloc's snowball swarm");
INSERT INTO wizard_spells VALUES (NULL, "Warding Wind");
INSERT INTO wizard_spells VALUES (NULL, "Catnap");
INSERT INTO wizard_spells VALUES (NULL, "Enemies Abound");
INSERT INTO wizard_spells VALUES (NULL, "Erupting earth");
INSERT INTO wizard_spells VALUES (NULL, "Flame arrows");
INSERT INTO wizard_spells VALUES (NULL, "Life Transference");
INSERT INTO wizard_spells VALUES (NULL, "Melf's minute meteors");
INSERT INTO wizard_spells VALUES (NULL, "Summon Lesser Demons");
INSERT INTO wizard_spells VALUES (NULL, "Thunder Step");
INSERT INTO wizard_spells VALUES (NULL, "Tidal wave");
INSERT INTO wizard_spells VALUES (NULL, "Tiny Servant");
INSERT INTO wizard_spells VALUES (NULL, "Wall of sand");
INSERT INTO wizard_spells VALUES (NULL, "Wall of water");
INSERT INTO wizard_spells VALUES (NULL, "Charm Monster");
INSERT INTO wizard_spells VALUES (NULL, "Elemental bane");
INSERT INTO wizard_spells VALUES (NULL, "Sickening radiance");
INSERT INTO wizard_spells VALUES (NULL, "Storm sphere");
INSERT INTO wizard_spells VALUES (NULL, "Summon greater demon");
INSERT INTO wizard_spells VALUES (NULL, "Vitriolic sphere");
INSERT INTO wizard_spells VALUES (NULL, "Watery sphere");
INSERT INTO wizard_spells VALUES (NULL, "Control winds");
INSERT INTO wizard_spells VALUES (NULL, "Danse Macabre");
INSERT INTO wizard_spells VALUES (NULL, "Dawn");
INSERT INTO wizard_spells VALUES (NULL, "Enervation");
INSERT INTO wizard_spells VALUES (NULL, "Far Step");
INSERT INTO wizard_spells VALUES (NULL, "Immolation");
INSERT INTO wizard_spells VALUES (NULL, "Infernal Calling");
INSERT INTO wizard_spells VALUES (NULL, "Negative energy flood");
INSERT INTO wizard_spells VALUES (NULL, "Skill empowerment");
INSERT INTO wizard_spells VALUES (NULL, "Steel wind strike");
INSERT INTO wizard_spells VALUES (NULL, "Synaptic static");
INSERT INTO wizard_spells VALUES (NULL, "Transmute rock");
INSERT INTO wizard_spells VALUES (NULL, "Wall of light");
INSERT INTO wizard_spells VALUES (NULL, "Create homunculus");
INSERT INTO wizard_spells VALUES (NULL, "Investiture of flame");
INSERT INTO wizard_spells VALUES (NULL, "Investiture of ice");
INSERT INTO wizard_spells VALUES (NULL, "Investiture of stone");
INSERT INTO wizard_spells VALUES (NULL, "Investiture of wind");
INSERT INTO wizard_spells VALUES (NULL, "Mental prison");
INSERT INTO wizard_spells VALUES (NULL, "Scatter");
INSERT INTO wizard_spells VALUES (NULL, "Soul cage");
INSERT INTO wizard_spells VALUES (NULL, "Tenser's transformation");
INSERT INTO wizard_spells VALUES (NULL, "Crown of stars");
INSERT INTO wizard_spells VALUES (NULL, "Power word pain");
INSERT INTO wizard_spells VALUES (NULL, "Whirlwind");
INSERT INTO wizard_spells VALUES (NULL, "Abi-Dalzim's horrid wilting");
INSERT INTO wizard_spells VALUES (NULL, "Illusory dragon");
INSERT INTO wizard_spells VALUES (NULL, "Maddening darkness");
INSERT INTO wizard_spells VALUES (NULL, "Mighty fortress");
INSERT INTO wizard_spells VALUES (NULL, "Invulnerability");
INSERT INTO wizard_spells VALUES (NULL, "Mass polymorph");
INSERT INTO wizard_spells VALUES (NULL, "Psychic scream");
-- TCE
INSERT INTO wizard_spells VALUES (NULL, "Booming Blade");
INSERT INTO wizard_spells VALUES (NULL, "Green-Flame Blade");
INSERT INTO wizard_spells VALUES (NULL, "Lightning Lure");
INSERT INTO wizard_spells VALUES (NULL, "Mind Sliver");
INSERT INTO wizard_spells VALUES (NULL, "Sword Burst");
INSERT INTO wizard_spells VALUES (NULL, "Tasha's Caustic Brew");
INSERT INTO wizard_spells VALUES (NULL, "Tasha's Mind Whip");
INSERT INTO wizard_spells VALUES (NULL, "Intellect Fortress");
INSERT INTO wizard_spells VALUES (NULL, "Spirit Shroud");
INSERT INTO wizard_spells VALUES (NULL, "Summon Fey");
INSERT INTO wizard_spells VALUES (NULL, "Summon Shadowspawn");
INSERT INTO wizard_spells VALUES (NULL, "Summon Undead");
INSERT INTO wizard_spells VALUES (NULL, "Summon Aberration");
INSERT INTO wizard_spells VALUES (NULL, "Summon Construct");
INSERT INTO wizard_spells VALUES (NULL, "Summon Elemental");
INSERT INTO wizard_spells VALUES (NULL, "Summon Fiend");
INSERT INTO wizard_spells VALUES (NULL, "Tasha's Otherworldly Guise");
INSERT INTO wizard_spells VALUES (NULL, "Dream of the Blue Veil");
INSERT INTO wizard_spells VALUES (NULL, "Blade of Disaster");
-- FTD
INSERT INTO wizard_spells VALUES (NULL, "Ashardalon's Stride");
INSERT INTO wizard_spells VALUES (NULL, "Draconic Transformation");
INSERT INTO wizard_spells VALUES (NULL, "Fizban's Platinum Shield");
INSERT INTO wizard_spells VALUES (NULL, "Nathair's Mischief");
INSERT INTO wizard_spells VALUES (NULL, "Raulothim's Psychic Lance");
INSERT INTO wizard_spells VALUES (NULL, "Rime's Binding Ice");
INSERT INTO wizard_spells VALUES (NULL, "Summon Draconic Spirit");
