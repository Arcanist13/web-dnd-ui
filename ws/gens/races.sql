DROP TABLE races;
CREATE TABLE races (
	id INTEGER PRIMARY KEY,
	name TEXT NOT NULL
);

DROP TABLE sub_races;
CREATE TABLE sub_races (
	id INTEGER PRIMARY KEY,
	race_id INTEGER NOT NULL,
	name TEXT NOT NULL,
	FOREIGN KEY (race_id) REFERENCES race(id)
);

DROP TABLE race_features;
CREATE TABLE race_features (
	id INTEGER PRIMARY KEY,
	race_id INTEGER NOT NULL,
	name TEXT NOT NULL,
	summary TEXT,
	description TEXT,
	FOREIGN KEY (race_id) REFERENCES race(id)
);

DROP TABLE sub_race_features;
CREATE TABLE sub_race_features (
	id INTEGER PRIMARY KEY,
	subrace_id INTEGER NOT NULL,
	name TEXT NOT NULL,
	summary TEXT,
	description TEXT,
	FOREIGN KEY (subrace_id) REFERENCES sub_race(id)
);

-- RACES
DELETE FROM races;
-- PHB
INSERT INTO races VALUES (NULL, "Dwarf"); -- 1
INSERT INTO races VALUES (NULL, "Elf"); -- 2
INSERT INTO races VALUES (NULL, "Halfling"); -- 3
INSERT INTO races VALUES (NULL, "Human"); -- 4
INSERT INTO races VALUES (NULL, "Dragonborn"); -- 5
INSERT INTO races VALUES (NULL, "Gnome"); -- 6
INSERT INTO races VALUES (NULL, "Half-Elf"); -- 7
INSERT INTO races VALUES (NULL, "Half-Orc"); -- 8
INSERT INTO races VALUES (NULL, "Tiefling"); -- 9

-- VGM
INSERT INTO races VALUES (NULL, "Aasimar"); -- 10
INSERT INTO races VALUES (NULL, "Firbolg"); -- 11
INSERT INTO races VALUES (NULL, "Goliath"); -- 12
INSERT INTO races VALUES (NULL, "Kenku"); -- 13
INSERT INTO races VALUES (NULL, "Lizardfolk"); -- 14
INSERT INTO races VALUES (NULL, "Tabaxi"); -- 15
INSERT INTO races VALUES (NULL, "Triton"); -- 16
INSERT INTO races VALUES (NULL, "Bugbear"); -- 17
INSERT INTO races VALUES (NULL, "Goblin"); -- 18
INSERT INTO races VALUES (NULL, "Hobgoblin"); -- 19
INSERT INTO races VALUES (NULL, "Kobold"); -- 20
INSERT INTO races VALUES (NULL, "Orc"); -- 21
INSERT INTO races VALUES (NULL, "Yuan-ti"); -- 22

-- MTF
INSERT INTO races VALUES (NULL, "Gith"); -- 23

-- GGR
INSERT INTO races VALUES (NULL, "Centaur"); -- 24
INSERT INTO races VALUES (NULL, "Loxodon"); -- 25
INSERT INTO races VALUES (NULL, "Minotaur"); -- 26
INSERT INTO races VALUES (NULL, "Simic Hybrid"); -- 27
INSERT INTO races VALUES (NULL, "Vedalken"); -- 28

-- AI
INSERT INTO races VALUES (NULL, "Verdan"); -- 29

-- MOT
INSERT INTO races VALUES (NULL, "Leonin"); -- 30
INSERT INTO races VALUES (NULL, "Satyr"); -- 31

-- TCE
INSERT INTO races VALUES (NULL, "Custom Lineage"); -- 32

-- VRG
INSERT INTO races VALUES (NULL, "Dhampir"); -- 33
INSERT INTO races VALUES (NULL, "Hexblood"); -- 34
INSERT INTO races VALUES (NULL, "Reborn"); -- 35


-- SUBRACE
DELETE FROM sub_races;
-- Dwarf
INSERT INTO sub_races VALUES (NULL, 1, "Hill Dwarf"); -- 1
INSERT INTO sub_races VALUES (NULL, 1, "Mountain Dwarf"); -- 2
INSERT INTO sub_races VALUES (NULL, 1, "Duergar"); -- 3
-- Elf
INSERT INTO sub_races VALUES (NULL, 2, "High Elf"); -- 4
INSERT INTO sub_races VALUES (NULL, 2, "Wood Elf"); -- 5
INSERT INTO sub_races VALUES (NULL, 2, "Dark Elf (Drow)"); -- 6
INSERT INTO sub_races VALUES (NULL, 2, "Eladrin"); -- 7
INSERT INTO sub_races VALUES (NULL, 2, "Sea Elf"); -- 8
INSERT INTO sub_races VALUES (NULL, 2, "Shadar-kai"); --9
-- Halfling
INSERT INTO sub_races VALUES (NULL, 3, "Lightfoot"); -- 10
INSERT INTO sub_races VALUES (NULL, 3, "Stout"); -- 11
-- Gnome
INSERT INTO sub_races VALUES (NULL, 6, "Forest Gnome"); -- 12
INSERT INTO sub_races VALUES (NULL, 6, "Rock Gnome"); -- 13
INSERT INTO sub_races VALUES (NULL, 6, "Deep Gnome"); -- 14
-- Aasimar
INSERT INTO sub_races VALUES (NULL, 10, "Protector Aasimar"); -- 15
INSERT INTO sub_races VALUES (NULL, 10, "Scourge Aasimar"); -- 16
INSERT INTO sub_races VALUES (NULL, 10, "Fallen Aasimar"); -- 17
-- Gith
INSERT INTO sub_races VALUES (NULL, 23, "Githyanki"); -- 18
INSERT INTO sub_races VALUES (NULL, 23, "Githzerai"); -- 19

-- RACE FEATURES
DELETE FROM race_features;
DELETE FROM sub_race_features;
-- Dwarf
---- race
INSERT INTO race_features VALUES (NULL, 1, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 1
INSERT INTO race_features VALUES (NULL, 1, "Dwarven Resilience", "Advantage on saving throws against poison,. Resistance against poison damage.", "You have advantage on saving throws against poison, and you have resistance against poison damage."); -- 2
INSERT INTO race_features VALUES (NULL, 1, "Stonecunning", "Double proficiency when checking origin of stonework.", "Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus."); -- 3
---- Subrace
------ Hill
INSERT INTO sub_race_features VALUES (NULL, 1, "Dwarven Toughness", "Hit point increase on level up.", "Your hit point maximum increases by 1, and it increases by 1 every time you gain a level."); -- 1
------ Mountain
INSERT INTO sub_race_features VALUES (NULL, 2, "Dwarven Armor Training", "Proficient with light and medium armor.", "You have proficiency with light and medium armor."); -- 2
------ Duergar
INSERT INTO sub_race_features VALUES (NULL, 3, "Superior Darkvision", "You darkvision has a radius of 120 feet.", "You darkvision has a radius of 120 feet."); --
INSERT INTO sub_race_features VALUES (NULL, 3, "Duergar Resilience", "You have advantage on saving throws against illusions and against being charmed or paralyzed.", "You have advantage on saving throws against illusions and against being charmed or paralyzed."); --
INSERT INTO sub_race_features VALUES (NULL, 3, "Duergar Magic", "You gain additional spells at 3rd and 5th level.", "When you reach 3rd level, you can cast the <i>enlarge/reduce</i> spell on yourself once with this trait, using only the spell's enlarge option. When you reach 5th level, you can cast the <i>invisibility</i> spell on yourself once with this trait. You don't need material components for either spell, and you can't cast them whilte you're in direct sunlight, althought sunlight has no effect on them once cast. You regain the ability to cast these spells with this trait when you finish a long rest. Intelligence is your spellcasting ability for these spells."); --
INSERT INTO sub_race_features VALUES (NULL, 3, "Sunlight Sensitivity", "Disadvantage on attacks and Perception checks against targets in direct sunlight.", "You have disadvantage on attack rolls and on Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight."); --

-- Elf
---- race
INSERT INTO race_features VALUES (NULL, 2, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Accustomed to twilight forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 4
INSERT INTO race_features VALUES (NULL, 2, "Keen Senses", "Proficient in Perception", "You have proficiency in the Perception skill."); -- 5
INSERT INTO race_features VALUES (NULL, 2, "Fey Ancestry", "Advantage against being charmed. Can't be magically put to sleep.", "You have advantage on saving throws against being charmed, and magic can't put you to sleep."); -- 6
INSERT INTO race_features VALUES (NULL, 2, "Trance", "Don't sleep, meditate deeply for 4 hours.", "Elves don't need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep."); -- 7
---- Sub race
------ High Elf
INSERT INTO sub_race_features VALUES (NULL, 4, "Elf Weapon Training", "Proficient with longsword, shortsword, shortbow and longbow.", "You have proficiency with the longsword, shortsword, shortbow and a longbow."); -- 3
INSERT INTO sub_race_features VALUES (NULL, 4, "Cantrip", "You know a wizard cantrip.", "You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it."); -- 4
------ Wood Elf
INSERT INTO sub_race_features VALUES (NULL, 5, "Elf Weapon Training", "Proficient with longsword, shortsword, shortbow and longbow.", "You have proficiency with the longsword, shortsword, shortbow and a longbow."); -- 5
INSERT INTO sub_race_features VALUES (NULL, 5, "Fleet of Foot", "Walking speed 35ft.", "Your base walking speed increases to 35 feet."); -- 6
INSERT INTO sub_race_features VALUES (NULL, 5, "Mask of the Wild", "Hide when lightly obscured.", "You can attempt to hide even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena."); -- 7
------ Dark Elf
INSERT INTO sub_race_features VALUES (NULL, 6, "Superior Darkvision", "Darkvision to 120ft.", "Your darkvision has a radius of 120 feet."); -- 8
INSERT INTO sub_race_features VALUES (NULL, 6, "Sunlight Sensitivity", "Disadvantage on attacks and Perception in sunlight.", " You have disadvantage on attack rolls and Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight."); -- 9
INSERT INTO sub_race_features VALUES (NULL, 6, "Drow Magic", "You gain spells as you reach certain levels.", "You know the <i>dancing lights</i> cantrip. When you reach 3rd level, you can cast the <i>faerie fire</i> spell once with this trait and regain the ability to do so when you finish a log rest. When you reach 5th level, you can cast the <i>darkness</i> spell once with this trait and regain the ability to do so when you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 10
INSERT INTO sub_race_features VALUES (NULL, 6, "Drow Weapon Training", "Proficient with rapiers, shortswords, and hand crossbows.", "You have proficiency with rapiers, shortswords, and hand crossbows."); -- 11
------ Eladrin
INSERT INTO sub_race_features VALUES (NULL, 7, "Fey Step", "As a bonus action, magically teleport 30ft to a space you can see, at 3rd level you gain an additional effect.", "As a bonus action, you can magically teleport up to 30 feet to an unoccupied space you can see. Once you use this trait, you cna't do so again until you finish a short or long rest.<br>When you reach 3rd level, your Fey Step gains an additional effect based on your season; if the effect requires a saving throw, the DC equals 8 + your proficiency bonus + your Charisma modifier:<br><br><b>Autumn.</b> Immediately after you use your Fey Step, up to two creatures of your choice that you can see within 10 feet of you must succeed on a Wisdom saving throw or be charmed by you for 1 minute, or until you or your companions deal any damage to it.<br><b>Winter.</b> When you use your Fey Step, one creature of your choice that you can see within 5 feet of you before you teleport must succeed on a Wisdom saving throw or be frightened of you until the end of your next turn.<br><b>Spring.</b> When you sue your Fey Step, you can touch one willing creature within 5 feet of you. That creature then teleports instead of you, appearing in an unoccupied space of your choice that you can see within 30 feet of you.<br><b>Summer.</b> Immediately after you use your Fey Step, each creature of your choice that you can see within 5 feet of you takes fire damage equal to your Charisma modifier (minimum of 1 damage)."); --
------ Sea elf
INSERT INTO sub_race_features VALUES (NULL, 8, "Child of the Sea", "You have a swimming speed of 30 feet, and you can breath air and water.", "You have a swimming speed of 30 feet, and you can breath air and water."); --
INSERT INTO sub_race_features VALUES (NULL, 8, "Friend of the Sea", "Using gestures and sounds, you can communicate simple ideas with any beast that has an innate swimming speed.", "Using gestures and sounds, you can communicate simple ideas with any beast that has an innate swimming speed."); --
------ Shadar-kai
INSERT INTO sub_race_features VALUES (NULL, 9, "Necrotic Resistance", "You have resistance to necrotic damage.", "You have resistance to necrotic damage."); --
INSERT INTO sub_race_features VALUES (NULL, 9, "Blessing of the Raven Queen", "As a bonus action, magically teleport 30ft to unoccupied space. At 3rd level, after doing so gain resistance to damage until the start of your next turn.", "As a bonus action, you can magically teleport up to 30 feet to an unoccupied space you can see. Once you use this trait, you can't do so again until you finish a long rest.<br>Starting at 3rd level, you also gain resistance to all damage when you teleport using this trait. The resistance lasts until the start of your next turn. During that time, you appear ghostly and translucent."); --

-- Halfling
---- race
INSERT INTO race_features VALUES (NULL, 3, "Lucky", "Reroll natural 1s.", "When you roll a 1 on the d20 for an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll."); -- 8
INSERT INTO race_features VALUES (NULL, 3, "Brave", "Advantage against frightened.", "You have advantage on saving throws against being frightened."); -- 9
INSERT INTO race_features VALUES (NULL, 3, "Halfling Nimbleness", "Move through larger creatures space.", "You can move through the space of any creature that is of a size larger than yours."); -- 10
---- Subrace
------ Lightfoot
INSERT INTO sub_race_features VALUES (NULL, 10, "Naturally Stealthy", "Hide behind larger creatures.", "You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you."); -- 12
------ Stout
INSERT INTO sub_race_features VALUES (NULL, 11, "Stout Resilience", "Advantage and resistance against poison.", "You have advantage on saving throws against poison, and you have resistance against poison damage."); -- 13

-- Human
---- race

-- Dragonborn
---- race
INSERT INTO race_features VALUES (NULL, 5, "Draconic Ancestry", "You gain resistance and an attack based on your colour.", "You have Draconic ancestry. Choose one type of dragon from the Draconic Ancestry table. Your breath weapon and damage resistance are determined by the dragon type, as shown in the table.<br><table class='table table-striped'><tr><th>Dragon</th><th>Damage Type</th><th>Breath Weapon</th></tr><tr><td>Black</td><td>Acid</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Blue</td><td>Lightning</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Brass</td><td>Fire</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Bronze</td><td>Lightning</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Copper</td><td>Acid</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Gold</td><td>Fire</td><td>15 ft. cone (Dex. save)</td></tr><tr><td>Green</td><td>Poison</td><td>15 ft. cone (Con. save)</td></tr><tr><td>Red</td><td>Fire</td><td>15 ft. cone (Dex. save)</td></tr><tr><td>Silver</td><td>Cold</td><td>15 ft. cone (Con. save)</td></tr><tr><td>White</td><td>Cold</td><td>15 ft. cone (Con. save)</td></tr></table>"); -- 11
INSERT INTO race_features VALUES (NULL, 5, "Breath Weapon", "Use your action to use your breath weapon once per rest.", "You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation.<br>When you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your draconic ancestry. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level.<br>After you use your breath weapon, you can’t use it again until you complete a short or long rest."); -- 12
INSERT INTO race_features VALUES (NULL, 5, "Damage Resistance", "Resistance based on your colour.", "You have resistance to the damage type associated with your draconic ancestry."); -- 13

-- Gnome
---- race
INSERT INTO race_features VALUES (NULL, 6, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 14
INSERT INTO race_features VALUES (NULL, 6, "Gnome Cunning", "Advantage against magic based saving throws (INT, WIS, CHA).", "You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic."); -- 15
---- Subrace
------ Forest
INSERT INTO sub_race_features VALUES (NULL, 12, "Natural Illusionist", "You know <i>minor illusion</i>.", "You know the <i>minor illusion</i> cantrip. Intelligence is your spellcasting ability for it."); -- 14
INSERT INTO sub_race_features VALUES (NULL, 12, "Speak with Small Beasts", "Can communicate with Small or smaller beasts.", "Through sounds and gestures, you can communicate simple ideas with Small or smaller beasts. Forest gnomes love animals and often keep squirrels, badgers, rabbits, moles, woodpeckers, and other creatures as beloved pets."); -- 15
------ Rock
INSERT INTO sub_race_features VALUES (NULL, 13, "Artificer's Lore", "Add double proficiency to tinker based knowledge checks.", "Whenever you make an Intelligence (History) check related to magical items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonuses you normally apply."); -- 16
INSERT INTO sub_race_features VALUES (NULL, 13, "Tinker", "Spend time and resources to build a device.", "You have proficiency with artisan's tools (tinker's tools). Using these tools, you can spend 1 hour and 10gp worth of materials to construct a Tiny clockwork device (AD 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the material used to create it. You can have up to three such devices active at a time.<br>When you create a device, choose one of the following options:</br><i>Clockwork Toy.</i> This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents.<br><i>Fire Starter.</i> The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action.<br><i>Music Box.</i> When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song's end or when it is closed."); -- 17
------ Deep
INSERT INTO sub_race_features VALUES (NULL, 14, "Superior Darkvision", "Your darkvision has a radius of 120 feet.", "Your darkvision has a radius of 120 feet."); -- 16
INSERT INTO sub_race_features VALUES (NULL, 14, "Stone Camouflage", "Advantage on Stealth checks to hide in rocky terrain and underground.", "You have advantage on Dexterity (Stealth) checks to hide in rocky terrain and underground."); -- 17

-- Half-Elf
INSERT INTO race_features VALUES (NULL, 7, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Thanks to your elf blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 16
INSERT INTO race_features VALUES (NULL, 7, "Fey Ancestry", "Advantage against being charmed. Can't be magically put to sleep.", "You have advantage on saving throws against being charmed, and magic can't put you to sleep."); -- 17

-- Half-Orc
INSERT INTO race_features VALUES (NULL, 8, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Thanks to your orc blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 18
INSERT INTO race_features VALUES (NULL, 8, "Menacing", "Proficient at Intimidation.", "You gain proficiency in the Intimidation skill."); -- 19
INSERT INTO race_features VALUES (NULL, 8, "Relentless Endurance", "Drop to 1 hit point instead of 0.", "When you are reduced to 0 hit points but not killed outright, you can drop 1 hit point instead. You can't use this feature again until you finish a long rest."); -- 20
INSERT INTO race_features VALUES (NULL, 8, "Savage Attacks", "Extra weapon damage die on critical hit.", "When you score a critical hit with a melee weapon attack, you can roll one of the weapon's damage dice one additional time and add it to the extra damage of the critical hit."); -- 21

-- Tiefling
INSERT INTO race_features VALUES (NULL, 9, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 22
INSERT INTO race_features VALUES (NULL, 9, "Hellish Resistance", "Resistance to fire damage.", "You have resistance to fire damage."); -- 23
INSERT INTO race_features VALUES (NULL, 9, "Infernal Legacy", "You gain spells as you reach certain levels.", "You know the <i>thaumaturgy</i> cantrip. When you reach 3rd level, you can cast the <i>hellish rebuke</i> spell as a 2nd-level spell once with this trait and regain the ability to do so when you finish a log rest. When you reach 5th level, you can cast the <i>darkness</i> spell once with this trait and regain the ability to do so when you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 24

-- Aasimar
---- race
INSERT INTO race_features VALUES (NULL, 10, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Blessed with a radiant soul, your vision can cut through darkness. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 25
INSERT INTO race_features VALUES (NULL, 10, "Celestial Resistance", "Resistance to necrotic and radiant damage.", "You have resistance to radiant damage and necrotic damage."); -- 26
INSERT INTO race_features VALUES (NULL, 10, "Healing Hands", "Touch a creature as an action to heal it hit points equal to your level.", "As an action, you can touch a creature and cause it to regain a number of hit points equal to your level. Once you use this trait, you can't use it again until you finish a long rest."); -- 27
------ Protector
INSERT INTO sub_race_features VALUES (NULL, 15, "Radiant Soul", "After 3rd level use your action to grow wings for 1 minute and do extra radiant damage on attacks. Flying speed of 30ft.", "Starting at 3rd level, you can use your action to unleash the divine energy within yourself, causing your eyes to glimmer and two luminous, incorporeal wings to sprout from your back.<br>Your transformation lasts for 1 minute or until you end it as a bonus action. During it, you have a flying speed of 30 feet, and once on each of your turns, you can deal extra radiant damage to one target when you deal damage to it with an attack or a spell. The extra radiant damage equals your level.<br>Once you use this trait, you can't use it again until you finish a long rest."); -- 18
------ Scourge
INSERT INTO sub_race_features VALUES (NULL, 16, "Radiant Consumption", "After 3rd level use your action to cause AoE damage within 10ft. and do extra radiant damage on attacks", "Starting at 3rd level, you can use your action to unleash the divine energy within yourself, causing a searing light to radiate from you, pour out of your eyes and mouth, and threaten to char you.<br>Your transformation lasts for 1 minute or until you end it as a bonus action. During it, you shed bright light in a 10-foot radius and dim light for an additional 10 feet, and at the end of each of your turns, you and each creature within 10 feet of you take radiant damage equal to half your level (rounded up). In addition, once on each of your turns, you can deal extra radiant damage to one target when you deal damage to it with an attack or a spell. The extra radiant damage equals your level.<br>Once you use this trait, you can't use it again until you finish a long rest."); -- 19
------ Fallen
INSERT INTO sub_race_features VALUES (NULL, 17, "Necrotic Shroud", "After 3rd level use your action to frighten creatures within 10ft. and do extra necrotic damage on attacks.", "Starting at 3rd level, you can use your action to unleash the divine energy within yourself, causing your eyes to turn into pools of darkness and two skeletal, ghostly, flightless wings to sprout from your back. The instant you transform, other creatures within 10 feet of you that can see you must each succeed on a Charisma saving throw (DC 8 + your proficiency bonus + your Charisma modifier) or become frightened of you until the end of your next turn.<br>Your transformation lasts for 1 minute or until you end it as a bonus action. During it, once on each of your turns, you can deal extra necrotic damage to one target when you deal damage to it with an attack or a spell. The extra necrotic damage equals your level.<br>Once you use this trait, you can't use it again until you finish a long rest."); -- 20

-- Firbolg
INSERT INTO race_features VALUES (NULL, 11, "Firbolg Magic", "You can cast either <i>detect magic</i> or <i>disguise self</i> once per rest.", "You can cast <i>detect magic</i> and <i>disguise self</i> with this trait, using Wisdom as your spellcasting ability for them. Once you cast either spell, you can't cast it again with this trait until you finish a short or long rest. When you use this version of <i>disguise self</i>, you can seem up to 3 feet shorter than normal, allowing you to more easily blend in with humans and elves."); -- 28
INSERT INTO race_features VALUES (NULL, 11, "Hidden Step", "As a bonus action, you can magically turn invisible.", "As a bonus action, you can magically turn invisible until the start of your next turn or until you attack, make a damage roll, or force someone to make a saving throw. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 29
INSERT INTO race_features VALUES (NULL, 11, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 30
INSERT INTO race_features VALUES (NULL, 11, "Speech of Beast and Leaf", "You can communicate in a limited manner with beasts and plants.", "You have the ability to communicate in a limited manner with beasts and plants. They can understand the meaning of your words, though you have no special ability to understand them in return. You have advantage on all Charisma checks you make to influence them."); -- 31

-- Goliath
INSERT INTO race_features VALUES (NULL, 12, "Stone's Endurance", "Use reaction to reduce damage by 1d12 + Constitution once per rest.", "You can focus yourself to occasionally shrug off injury. When you take damage, you can use your reaction to roll a dl2. Add your Constitution modifier to the number rolled, and reduce the damage by that total. After you use this trait, you can't use it again until you finish a short or long rest."); -- 32
INSERT INTO race_features VALUES (NULL, 12, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 33
INSERT INTO race_features VALUES (NULL, 12, "Mountain Born", "Acclimated to high altitude, naturally adapted to cold climates.", "You're acclimated to high altitude, including elevations above 20,000 feet. You're also naturally adapted to cold climates, as described in chapter 5 of the Dungeon Master's Guide."); -- 34

-- Kenku
INSERT INTO race_features VALUES (NULL, 13, "Expert Forgery", "Advantage on checks to produce forgeries or duplicates of existing objects.", "You can duplicate other creatures' handwriting and craftwork. You have advantage on all checks made to produce forgeries or duplicates of existing objects."); -- 35
INSERT INTO race_features VALUES (NULL, 13, "Mimicry", "You can mimic sounds you have heard, including voices.", "You can mimic sounds you have heard, including voices. A creature that hears the sounds you make can tell they are imitations with a successful Wisdom (Insight) check opposed by your Charisma (Deception) check."); -- 36

-- Lizardfolk
INSERT INTO race_features VALUES (NULL, 14, "Bite", "Bite with unarmed attacks, deal piercing damage equal to 1d6 + your Strength.", "Your fanged maw is a natural weapon, which you can use to make unarmed strikes. If you hit with it, you deal piercing damage equal to 1d6 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 37
INSERT INTO race_features VALUES (NULL, 14, "Cunning Artisan", "Make items from slain beasts during a short rest.", "As part of a short rest, you can harvest bone and hide from a slain beast, construct, dragon, monstrosity, or plant creature of size Small or larger to create one of the following items: a shield, a club, a javelin, or 1d4 darts or blowgun needles. To use this trait, you need a blade, such as a dagger, or appropriate artisan's tools, such as leatherworker's tools."); -- 38
INSERT INTO race_features VALUES (NULL, 14, "Hold Breath", "You can hold your breath for up to 15 minutes at a time.", "You can hold your breath for up to 15 minutes at a time."); -- 39
INSERT INTO race_features VALUES (NULL, 14, "Natural Armor", "Your AC is 13 + your Dexterity modifier.", "You have tough, scaly skin. When you aren't wearing armor, your AC is 13 + your Dexterity modifier. You can use your natural armor to determine your AC if the armor you wear would leave you with a lower AC. A shield's benefits apply as normal while you use your natural armor."); -- 40

-- Tabaxi
INSERT INTO race_features VALUES (NULL, 15, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You have a cat's keen senses, especially in the dark. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 41
INSERT INTO race_features VALUES (NULL, 15, "Feline Agility", NULL, "Your reflexes and agility allow you to move with a burst of speed. When you move on your turn in combat, you can double your speed until the end of the turn. Once you use this trait, you can't use it again until you move 0 feet on one of your turns."); -- 42
INSERT INTO race_features VALUES (NULL, 15, "Cat's Claw", NULL, "Because of your claws, you have a climbing speed of 20 feet. In addition, your claws are natural weapons, which you can use to make unarmed strikes. If you hit with them, you deal slashing damage equal to 1d4 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 43

-- Triton
INSERT INTO race_features VALUES (NULL, 16, "Amphibious", NULL, "You can breathe air and water."); -- 44
INSERT INTO race_features VALUES (NULL, 16, "Control Air and Water", NULL, "A child of the sea, you can call on the magic of elemental air and water. You can cast <i>fog cloud</i> with this trait. Starting at 3rd level, you can cast <i>gust of wind</i> with it, and starting at 5th level, you can also cast <i>wall of water</i> with it (see the spell in the sidebar). Once you cast a spell with this trait, you can't do so again until you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 45
INSERT INTO race_features VALUES (NULL, 16, "Emissary of the Sea", NULL, "Aquatic beasts have an extraordinary affinity with your people. You can communicate simple ideas with beasts that can breathe water. They can understand the meaning of your words, though you have no special ability to understand them in return."); -- 46
INSERT INTO race_features VALUES (NULL, 16, "Guardians of the Depths", NULL, "Adapted to even the most extreme ocean depths, you have resistance to cold damage, and you ignore any of the drawbacks caused by a deep, underwater environment."); -- 47

-- Bugbear
INSERT INTO race_features VALUES (NULL, 17, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 48
INSERT INTO race_features VALUES (NULL, 17, "Long-Limbed", "Your reach increases by 5ft.", "When you make a melee attack on your turn, your reach for it is 5 feet greater than normal."); -- 49
INSERT INTO race_features VALUES (NULL, 17, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 50
INSERT INTO race_features VALUES (NULL, 17, "Surprise Attack", "If you hit a surprised creature deal extra 2d6 damage once per combat.", "If you surprise a creature and hit it with an attack on your first turn in combat, the attack deals an extra 2d6 damage to it. You can use this trait only once per combat."); -- 51

-- Goblin
INSERT INTO race_features VALUES (NULL, 18, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 52
INSERT INTO race_features VALUES (NULL, 18, "Fury of the Small", "Deal extra damage equal to your level when you hit a larger creature once per rest.", "When you damage a creature with an attack or a spell and the creature's size is larger than yours, you can cause the attack or spell to deal extra damage to the creature. The extra damage equals your level. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 53
INSERT INTO race_features VALUES (NULL, 18, "Nimble Escape", "You can take the Disengage or Hide action as a bonus action on each of your turns.", "You can take the Disengage or Hide action as a bonus action on each of your turns."); -- 54

-- Hobgoblin
INSERT INTO race_features VALUES (NULL, 19, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 55
INSERT INTO race_features VALUES (NULL, 19, "Saving Face", "If you miss an attack, or fail an ability check or saving throw, add bonus equal to number of allies within 30ft. (max +5) once per rest.", "Hobgoblins are careful not to show weakness in front of their allies, for fear of losing status. If you miss with an attack roll or fail an ability check or a saving throw, you can gain a bonus to the roll equal to the number of allies you can see within 30 feet of you (maximum bonus of +5). Once you use this trait, you can't use it again until you finish a short or long rest."); -- 56

-- Kobold
INSERT INTO race_features VALUES (NULL, 20, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 57
INSERT INTO race_features VALUES (NULL, 20, "Grovel, Cower, and Beg", "Use your action to distract enemies within 10ft., allies gain advantage on attacks against them, once per rest.", "As an action on your turn, you can cower pathetically to distract nearby foes. Until the end of your next turn, your allies gain advantage on attack rolls against enemies within 10 feet of you that can see you. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 58
INSERT INTO race_features VALUES (NULL, 20, "Pack Tactics", "You have advantage on attacks if an ally is within 5ft.", "You have advantage on an attack roll against a creature if at least one of your allies is within 5 feet of the creature and the ally isn't incapacitated."); -- 59
INSERT INTO race_features VALUES (NULL, 20, "Sunlight Sensitivity", "Disadvantage on attacks and Perception (sight) when in direct sunlight.", "You have disadvantage on attack rolls and on Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight."); -- 60

-- Orc
INSERT INTO race_features VALUES (NULL, 21, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 61
INSERT INTO race_features VALUES (NULL, 21, "Aggressive", "Use a bonus action to move your speed towards and enemy.", "As a bonus action, you can move up to your speed toward an enemy of your choice that you can see or hear. You must end this move closer to the enemy than you started."); -- 62
INSERT INTO race_features VALUES (NULL, 21, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 63

-- Yuan-ti
INSERT INTO race_features VALUES (NULL, 22, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 64
INSERT INTO race_features VALUES (NULL, 22, "Innate Spellcasting", "You can cast <i>poison spray</i>, <i>animal friendship</i> (on snakes), and at 3rd level <i>suggestion</i>.", "You know the <i>poison spray</i> cantrip. You can cast <i>animal friendship</i> an unlimited number of times with this trait, but you can target only snakes with it. Starting at 3rd level, you can also cast <i>suggestion</i> with this trait. Once you cast it, you can't do so again until you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 65
INSERT INTO race_features VALUES (NULL, 22, "Magic Resistance", "You have advantage on saving throws against spells and other magical effects.", "You have advantage on saving throws against spells and other magical effects."); -- 66
INSERT INTO race_features VALUES (NULL, 22, "Poison Immunity", "You are immune to poison damage and the poisoned condition.", "You are immune to poison damage and the poisoned condition."); -- 67

-- Gith
-- Githyanki
INSERT INTO sub_race_features VALUES (NULL, 18, "Decadent Mastery", "You learn a language and a skill or tool proficiency.", "You learn on language of your choice, and you are proficient with one skill or tool of your choice."); --
INSERT INTO sub_race_features VALUES (NULL, 18, "Martial Prodigy", "You gain additional armour and weapon proficiencies.", "You are proficient with light and medium armour and with shortswords, longswords, and greatswords."); --
INSERT INTO sub_race_features VALUES (NULL, 18, "Githyanki Psionics", "You gain additional spells at 1st, 3rd, and 5th level.", "You know the <i>mage hand</i> cantrip, and the hand is invisible when you cast the cantrip with this trait.<br>When you reach 3rd level, you cna cast the <i>jump</i> spell once with this trait, and you regain the ability to do so when you finish a long rest. When you reach 5th level, you can cast the <i>misty step</i> spell once with this trait, and you regain the ability to do so when you finish a long rest.<br>Intelligence is your spellcasting ability for these spells. When you cast them with this trait, they don't require components."); --
-- Githzerai
INSERT INTO sub_race_features VALUES (NULL, 19, "Mental Discipline", "You have advantage on saving throws against the charmed and frightened conditions.", "You have advantage on saving throws against the charmed and frightened conditions."); --
INSERT INTO sub_race_features VALUES (NULL, 19, "Githzerai Psionics", "You gain additional spells at 1st, 3rd, and 5th level.", "You know the <i>mage hand</i> cantrip, and the hand is invisible when you cast the cantrip with this trait.<br>When you reach 3rd level, you cna cast the <i>shield</i> spell once with this trait, and you regain the ability to do so when you finish a long rest. When you reach 5th level, you can cast the <i>detect thoughts</i> spell once with this trait, and you regain the ability to do so when you finish a long rest.<br>Intelligence is your spellcasting ability for these spells. When you cast them with this trait, they don't require components."); --


-- GGR
-- Centaur
INSERT INTO race_features VALUES (NULL, 24, "Charge", "If you move 30ft straight line then attack, also make a conus action attack with your hooves.", "If you move at least 30 feet straight toward a target and then hit it with a melee weapon attack on the same turn, you can immediately follow that attack with a bonus action, making one attack against the target with your hooves."); -- 69
INSERT INTO race_features VALUES (NULL, 24, "Hooves", "Unarmed strikes deal 1d4 + Strength modifier bludgeoning.", "Your hooves are natural melee weapons, which you can use to make unarmed strikes. If you hit with them, you deal bludgeoning damage equal to 1d4 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 70
INSERT INTO race_features VALUES (NULL, 24, "Equine Build", "Count as one size larger (for carry capacity and push or drag).<br>Climbing (with hands and feet) costs 4 x movement.", "You count as one size larger when determining your carrying capacity and the weight you can push or drag.<br><br>In addition, any climb that requires hands and feet is especially difficult for you because of your equine legs. When you make such a climb, each foot of movement costs you 4 extra feet, instead of the normal 1 extra foot."); -- 71
-- Loxodon
INSERT INTO race_features VALUES (NULL, 25, "Powerful Build", "Count as one size larger for carry capacity and push, drag, and lifting.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 72
INSERT INTO race_features VALUES (NULL, 25, "Loxodon Serenity", "Advantage on saving throws against being charmed or frightened.", "You have advantage on saving throws against being charmed or frightened."); -- 73
INSERT INTO race_features VALUES (NULL, 25, "Natural Armor", "AC = 12 + Constitution modifier, while not wearing armor.", "You have thick, leathery skin. When you aren't wearing armor, your AC is 12 + your Constitution modifier. You can use your natural armor to determine your AC if the armor you wear would leave you with a lower AC. A shield's benefits apply as normal while you use your natural armor."); -- 74
INSERT INTO race_features VALUES (NULL, 25, "Trunk", "Use trunk as snorkel (5ft reach). Can lift 5 x Strength score pounds.", "You can grasp things with your trunk, and you can use it as a snorkel. It has a reach of 5 feet, and it can lift a number of pounds equal to five times your Strength score. You can use it to do the following simple tasks: lift, drop, hold, push, or pull an object or a creature; open or close a door or a container; grapple someone; or make an unarmed strike. Your DM might allow other simple tasks to be added to that list of options.<br><br>Your trunk can't wield weapons or shields or do anything that requires manual precision, such as using tools or magic items or performing the somatic components of a spell."); -- 75
INSERT INTO race_features VALUES (NULL, 25, "Keen Smell", "Advantage on Perception, Survival, and Investigation checks that involve smell.", "Thanks to your sensitive trunk, you have advantage on Wisdom (Perception), Wisdom (Survival), and Intelligence (Investigation) checks that involve smell."); -- 76
-- Minotaur
INSERT INTO race_features VALUES (NULL, 26, "Horns", "Unarmed Strikes use horns, deal 1d6 + Strength modifier piercing damage.", "Your horns are natural melee weapons, which you can use to make unarmed strikes. If you hit with them, you deal piercing damage equal to 1d6 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 77
INSERT INTO race_features VALUES (NULL, 26, "Goring Rush", "After you Dash to move at least 20ft, bonus action melee attack.", "Immediately after you use the Dash action on your turn and move at least 20 feet, you can make one melee attack with your horns as a bonus action."); -- 78
INSERT INTO race_features VALUES (NULL, 26, "Hammering Horns", "After you hit with an Attack action, bonus action attempt to shove. Strength save (DC 8 + proficiency bonus + Strength modifier) pushed 10ft on fail.", "Immediately after you hit a creature with a melee attack as part of the Attack action on your turn, you can use a bonus action to attempt to shove that target with your horns. The target must be no more than one size larger than you and within 5 feet of you. Unless it succeeds on a Strength saving throw against a DC equal to 8 + your proficiency bonus + your Strength modifier, you push it up to 10 feet away from you."); -- 79
-- Simic Hybrid
INSERT INTO race_features VALUES (NULL, 27, "Darkvision", "Within 60ft dim light is considered bright, darkness is considered dim.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 80
INSERT INTO race_features VALUES (NULL, 27, "Animal Enhancement", "You gain benefits at 1st and 5th level.", "Your body has been altered to incorporate certain animal characteristics. You choose one animal enhancement now and a second enhancement at 5th level.<br><br><strong>Manta Glide</strong> You have ray-like fins that you can use as wings to slow your fall or allow you to glide. When you fall and aren't incapacitated, you can subtract up to 100 feet from the fall when calculating falling damage, and you can move up to 2 feet horizontally for every 1 foot you descend.<br><br><strong>Nimble Climber</strong> You have a climbing speed equal to your walking speed.<br><br><strong>Underwater Adaptation</strong> You can breathe air and water, and you have a swimming speed equal to your walking speed.<br><br>At 5th level, your body evolves further, developing new characteristics. Choose one of the options you didn't take at 1st level, or one of the following options:<br><br><strong>Grappling Appendage</strong> You have two special appendages growing alongside your arms. Choose whether they're both claws or tentacles. As an action, you can use one of them to try to grapple a creature. Each one is also a natural weapon, which you can use to make an unarmed strike. If you hit with it, the target takes bludgeoning damage equal to 1d6 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike. Immediately after hitting, you can try to grapple the target as a bonus action. These appendages can't precisely manipulate anything and can't wield weapons, magic items, or other specialized equipment.<br><br><strong>Carapace</strong> Your skin in places is covered by a thick shell. You gain a +1 bonus to AC when you're not wearing heavy armor.<br><br><strong>Acid Spit</strong> As an action, you can spray acid from glands in your mouth, targeting one creature or object you can see within 30 feet of you. The target takes 2d10 acid damage unless it succeeds on a Dexterity saving throw against a DC equal to 8 + your Constitution modifier + your proficiency bonus. This damage increases by 1d10 when you reach 11th level (3d10) and 17th level (4d10). You can use this trait a number of times equal to your Constitution modifier (minimum of once), and you regain all expended uses of it when you finish a long rest."); -- 81
-- Vedalken
INSERT INTO race_features VALUES (NULL, 28, "Vedalken Dispassion", "Advantage on all Intelligence, Wisdom, and Charisma saves.", "You have advantage on all Intelligence, Wisdom, and Charisma saving throws."); -- 82
INSERT INTO race_features VALUES (NULL, 28, "Tireless Precision", "Proficient in one of Arcana, History, Investigation, Medicine, Performance, or Sleight of Hand. When you make a check with this choice add extra d4.", "You are proficient in one of the following skills of your choice: Arcana, History, Investigation, Medicine, Performance, or Sleight of Hand. You are also proficient with one tool of your choice.<br><br>Whenever you make an ability check with the chosen skill or tool, roll a d4 and add the number rolled to the check's total."); -- 83
INSERT INTO race_features VALUES (NULL, 28, "Partially Amphibious", "Once per long rest breathe underwater for 1 hour.", "By absorbing oxygen through your skin, you can breathe underwater for up to 1 hour. Once you've reached that limit, you can't use this trait again until you finish a long rest."); -- 84


-- AI
-- Verdan
INSERT INTO race_features VALUES (NULL, 29, "Black Blood Healing", "When rolling HD, reroll 1s and 2s.", "The black blood that is a sign of your people's connection to That-Which-Endures boosts your natural healing. When you roll a 1 or 2 on any Hit Die you spend at the end of a short rest, you can reroll the die and must use the new roll."); -- 85
INSERT INTO race_features VALUES (NULL, 29, "Limited Telepathy", "Speak simple ideas and concepts telepathically (without shared language) to creatures you can see within 30ft.", "You can telepathically speak to any creature you can see within 30 feet of you. You don't need to share a language with the creature for it to understand your telepathy, but it must be able to understand at least one language. This process of communication is slow and limited, allowing you to transmit and receive only simple ideas and straightforward concepts."); -- 86
INSERT INTO race_features VALUES (NULL, 29, "Persuasive", "Proficient in Persuasion.", "Your people's lack of history makes you trustworthy and humble. You have proficiency in the Persuasion skill."); -- 87
INSERT INTO race_features VALUES (NULL, 29, "Telepathic Insight", "Advantage on all Wisdom and Charisma saving throws.", "Your mind's connection to the world around you strengthens your will. You have advantage on all Wisdom and Charisma saving throws."); -- 88


-- MOT
-- Leonin
INSERT INTO race_features VALUES (NULL, 30, "Darkvision", "Within 60ft dim light is considered bright, darkness is considered dim.", "You can see in dim light within 60 feet of you as if it were bright light and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 89
INSERT INTO race_features VALUES (NULL, 30, "Claws", "Unarmed Strikes use claws, deal 1d4 + Strength modifier slashing damage.", "Your claws are natural weapons, which you can use to make unarmed strikes. If you hit with them, you can deal slashing damage equal to 1d4 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 90
INSERT INTO race_features VALUES (NULL, 30, "Daunting Roar", "Once per long rest, bonus action to roar, creatures you choose within 10ft Wisdom save (DC = 8 + proficiency bonus + Constitution modifier) or frightened until end of your next turn.", "As a bonus action, you can let out an especially menacing roar. Creatures of your choice within 10 feet of you that can hear you must succeed on a Wisdom saving throw or become frightened of you until the end of your next turn. The DC of the save equals 8 + your proficiency bonus + your Constitution modifier. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 91
-- Satyr
INSERT INTO race_features VALUES (NULL, 31, "Ram", "Unarmed Strikes use horns, deal 1d4 + Strength modifier bludgeoning damage.", "You can use your head and horns to make unarmed strikes. If you hit with them, you deal bludgeoning damage equal to 1d4 + your Strength modifier."); -- 92
INSERT INTO race_features VALUES (NULL, 31, "Magic Resistance", "Advantage on saves against spells and other magical effects.", "You have advantage on saving throws against spells and other magical effects."); -- 93
INSERT INTO race_features VALUES (NULL, 31, "Mirthful Leaps", "On jumps, roll d8 and add to number of feet you cover (costs movement).", "Whenever you make a long or high jump, you can roll a d8 and add the number rolled to the number of feet you cover, even when making a standing jump. This extra distance costs movement as normal."); -- 94


-- VRG
-- Dhampir
INSERT INTO race_features VALUES (NULL, 33, "Darkvision", "Within 60ft dim light is considered bright, darkness is considered dim.", "You can see in dim light within 60 feet of you as if it were bright light and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 95
INSERT INTO race_features VALUES (NULL, 33, "Deathless Nature", "You don't need to breathe.", "You don't need to breathe."); -- 96
INSERT INTO race_features VALUES (NULL, 33, "Spider Climb", "Climb speed equals walking speed. At 3rd level move up, down, and across vertical surfaces, and upside down without hands.", "You have a climbing speed equal to your walking speed. In addition, at 3rd level, you can move up, down, and across vertical surfaces and upside down along ceilings, while leaving your hands free."); -- 97
INSERT INTO race_features VALUES (NULL, 33, "Vampiric Bite", "Fangs count as simple melee weapon, add Constitution as the modifier. Deals 1d4 piercing damage on a hit. These attacks have advantage if you have less than half health.<br>If you bit a creature that isn't a construct or undead choose one of the following effects: gain HP equal to damage dealt, gain bonus to next check or attack roll equal to damage. Use this a number of times equal to proficiency, reset on long rest.", "Your fanged bite is a natural weapon, which counts as a simple melee weapon with which you are proficient. You add your Constitution modifier, instead of your Strength modifier, to the attack and damage rolls when you attack with this bite. It deals 1d4 piercing damage on a hit. While you are missing half or more of your hit points, you have advantage on attack rolls you make with this bite.<br><br>When you attack with this bite and hit a creature that isn't a Construct or an Undead, you can empower yourself in one of the following ways of your choice:<br><br><ul><li>You regain hit points equal to the piercing damage dealt by the bite.</li><li>You gain a bonus to the next ability check or attack roll you make; the bonus equals the piercing damage dealt by the bite.</li></ul><br><br>You can empower yourself with this bite a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest."); -- 98
-- Hexblood
INSERT INTO race_features VALUES (NULL, 34, "Darkvision", "Within 60ft dim light is considered bright, darkness is considered dim.", "You can see in dim light within 60 feet of you as if it were bright light and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 99
INSERT INTO race_features VALUES (NULL, 34, "Eerie Token", "Once per long rest create token, use it to:<br><strong>Telepathic Message.</strong> Action to send 25 word telepathic message to holder of token (within 10 miles).<br><strong>Remote Viewing.</strong> If within 10 miles, action to trance for 1 min, see and hear from the token.", "As a bonus action, you can harmlessly remove a lock of your hair, one of your nails, or one of your teeth. This token is imbued with magic until you finish a long rest. While the token is imbued in this way, you can take these actions:<br><br><strong>Telepathic Message.</strong> As an action, you can send a telepathic message to the creature holding or carrying the token, as long as you are within 10 miles of it. The message can contain up to twenty-five words.<br><br><strong>Remote Viewing.</strong> If you are within 10 miles of the token, you can enter a trance as an action. The trance lasts for 1 minute, but it ends early if you dismiss it (no action required) or are incapacitated. During this trance, you can see and hear from the token as if you were located where it is. While you are using your senses at the token's location, you are blinded and deafened in regard to your own surroundings. When the trance ends, the token is harmlessly destroyed.<br><br>Once you create a token using this feature, you can't do so again until you finish a long rest, at which point your missing part regrows."); -- 100
INSERT INTO race_features VALUES (NULL, 34, "Hex Magic", "Once per long rest (or using spell slots) cast Disguise Self or Hex.", "You can cast the disguise self and hex spells with this trait. Once you cast either of these spells with this trait, you can't cast that spell with it again until you finish a long rest. You can also cast these spells using any spell slots you have.<br><br>Intelligence, Wisdom, or Charisma is your spellcasting ability for these spells (choose the ability when you gain this lineage)."); -- 101
-- Reborn
INSERT INTO race_features VALUES (NULL, 35, "Deathless Nature", "<ul><li>Advantage on saves against disease and being poisoned.</li><li>Resistance to poison damage.</li><li>Advantage on death saving throws.</li><li>Don't need to eat, drink, or breathe.</li><li>Don't need to sleep.</li><li>Long rest in 4 hours.</li></ul>", "You have escaped death, a fact represented by the following benefits:<br><br><ul><li>You have advantage on saving throws against disease and being poisoned, and you have resistance to poison damage.</li><li>You have advantage on death saving throws.</li><li>You don't need to eat, drink, or breathe.</li><li>You don't need to sleep, and magic can't put you to sleep. You can finish a long rest in 4 hours if you spend those hours in an inactive, motionless state, during which you retain consciousness.</li></ul>"); -- 102
INSERT INTO race_features VALUES (NULL, 35, "Knowledge from a Past Life", "When you make a skill check, roll and add a d6. Use this features a number of times equal to proficiency bonus, reset on long rest.", "You temporarily remember glimpses of the past, perhaps faded memories from ages ago or a previous life. When you make an ability check that uses a skill, you can roll a d6 immediately after seeing the number on the d20 and add the number on the d6 to the check. You can use this feature a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest."); -- 103
