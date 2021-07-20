DROP TABLE Race;
CREATE TABLE Race (
	ID INTEGER PRIMARY KEY,
	NAME TEXT NOT NULL
);

DROP TABLE SubRace;
CREATE TABLE SubRace (
	ID INTEGER PRIMARY KEY,
	RACE_ID INTEGER NOT NULL,
	NAME TEXT NOT NULL,
	DESCRIPTION TEXT,
	FOREIGN KEY (RACE_ID) REFERENCES Race(ID)
);

DROP TABLE RaceFeature;
CREATE TABLE RaceFeature (
	ID INTEGER PRIMARY KEY,
	RACE_ID INTEGER NOT NULL,
	NAME TEXT NOT NULL,
	SUMMARY TEXT,
	DESCRIPTION TEXT,
	FOREIGN KEY (RACE_ID) REFERENCES Race(ID)
);

DROP TABLE SubRaceFeature;
CREATE TABLE SubRaceFeature (
	ID INTEGER PRIMARY KEY,
	SUBRACE_ID INTEGER NOT NULL,
	NAME TEXT NOT NULL,
	SUMMARY TEXT,
	DESCRIPTION TEXT,
	FOREIGN KEY (SUBRACE_ID) REFERENCES SubRace(ID)
);

-- RACES
DELETE FROM Race;
INSERT INTO Race VALUES (NULL, NULL, "Dwarf"); -- 1
INSERT INTO Race VALUES (NULL, NULL, "Elf"); -- 2
INSERT INTO Race VALUES (NULL, NULL, "Halfling"); -- 3
INSERT INTO Race VALUES (NULL, NULL, "Human"); -- 4
INSERT INTO Race VALUES (NULL, NULL, "Dragonborn"); -- 5
INSERT INTO Race VALUES (NULL, NULL, "Gnome"); -- 6
INSERT INTO Race VALUES (NULL, NULL, "Half-Elf"); -- 7
INSERT INTO Race VALUES (NULL, NULL, "Half-Orc"); -- 8
INSERT INTO Race VALUES (NULL, NULL, "Tiefling"); -- 9
INSERT INTO Race VALUES (NULL, NULL, "Aasimar"); -- 10
INSERT INTO Race VALUES (NULL, NULL, "Firbolg"); -- 11
INSERT INTO Race VALUES (NULL, NULL, "Goliath"); -- 12
INSERT INTO Race VALUES (NULL, NULL, "Kenku"); -- 13
INSERT INTO Race VALUES (NULL, NULL, "Lizardfolk"); -- 14
INSERT INTO Race VALUES (NULL, NULL, "Tabaxi"); -- 15
INSERT INTO Race VALUES (NULL, NULL, "Triton"); -- 16
INSERT INTO Race VALUES (NULL, NULL, "Bugbear"); -- 17
INSERT INTO Race VALUES (NULL, NULL, "Goblin"); -- 18
INSERT INTO Race VALUES (NULL, NULL, "Hobgoblin"); -- 19
INSERT INTO Race VALUES (NULL, NULL, "Kobold"); -- 20
INSERT INTO Race VALUES (NULL, NULL, "Orc"); -- 21
INSERT INTO Race VALUES (NULL, NULL, "Yuan-ti"); -- 22

-- SUBRACE
DELETE FROM SubRace;
-- Dwarf
INSERT INTO SubRace VALUES (NULL, 1, "Hill Dwarf", NULL); -- 1
INSERT INTO SubRace VALUES (NULL, 1, "Mountain Dwarf", NULL); -- 2
-- Elf
INSERT INTO SubRace VALUES (NULL, 2, "High Elf", NULL); -- 3
INSERT INTO SubRace VALUES (NULL, 2, "Wood Elf", NULL); -- 4
INSERT INTO SubRace VALUES (NULL, 2, "Dark Elf (Drow)", NULL); -- 5
-- Halfling
INSERT INTO SubRace VALUES (NULL, 3, "Lightfoot", NULL); -- 6
INSERT INTO SubRace VALUES (NULL, 3, "Stout", NULL); -- 7
-- Gnome
INSERT INTO SubRace VALUES (NULL, 6, "Forest Gnome", NULL); -- 8
INSERT INTO SubRace VALUES (NULL, 6, "Rock Gnome", NULL); -- 9
-- Aasimar
INSERT INTO SubRace VALUES (NULL, 10, "Protector Aasimar", NULL); -- 10
INSERT INTO SubRace VALUES (NULL, 10, "Scourge Aasimar", NULL); -- 11
INSERT INTO SubRace VALUES (NULL, 10, "Fallen Aasimar", NULL); -- 12

-- RACE FEATURES
DELETE FROM RaceFeature;
DELETE FROM SubRaceFeature;
-- Dwarf
---- Race
INSERT INTO RaceFeature VALUES (NULL, 1, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 1
INSERT INTO RaceFeature VALUES (NULL, 1, "Dwarven Resilience", "Advantage on saving throws against poison,. Resistance against poison damage.", "You have advantage on saving throws against poison, and you have resistance against poison damage."); -- 2
INSERT INTO RaceFeature VALUES (NULL, 1, "Stonecunning", "Double proficiency when checking origin of stonework.", "Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus."); -- 3
---- Subrace
------ Hill
INSERT INTO SubRaceFeature VALUES (NULL, 1, "Dwarven Toughness", "Hit point increase on level up.", "Your hit point maximum increases by 1, and it increases by 1 every time you gain a level."); -- 1
------ Mountain
INSERT INTO SubRaceFeature VALUES (NULL, 2, "Dwarven Armor Training", "Proficient with light and medium armor.", "You have proficiency with light and medium armor."); -- 2

-- Elf
---- Race
INSERT INTO RaceFeature VALUES (NULL, 2, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Accustomed to twilight forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 4
INSERT INTO RaceFeature VALUES (NULL, 2, "Keen Senses", "Proficient in Perception", "You have proficiency in the Perception skill."); -- 5
INSERT INTO RaceFeature VALUES (NULL, 2, "Fey Ancestry", "Advantage against being charmed. Can't be magically put to sleep.", "You have advantage on saving throws against being charmed, and magic can't put you to sleep."); -- 6
INSERT INTO RaceFeature VALUES (NULL, 2, "Trance", "Don't sleep, meditate deeply for 4 hours.", "Elves don't need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep."); -- 7
---- Sub Race
------ High Elf
INSERT INTO SubRaceFeature VALUES (NULL, 3, "Elf Weapon Training", "Proficient with longsword, shortsword, shortbow and longbow.", "You have proficiency with the longsword, shortsword, shortbow and a longbow."); -- 3
INSERT INTO SubRaceFeature VALUES (NULL, 3, "Cantrip", "You know a wizard cantrip.", "You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it."); -- 4
------ Wood Elf
INSERT INTO SubRaceFeature VALUES (NULL, 4, "Elf Weapon Training", "Proficient with longsword, shortsword, shortbow and longbow.", "You have proficiency with the longsword, shortsword, shortbow and a longbow."); -- 5
INSERT INTO SubRaceFeature VALUES (NULL, 4, "Fleet of Foot", "Walking speed 35ft.", "Your base walking speed increases to 35 feet."); -- 6
INSERT INTO SubRaceFeature VALUES (NULL, 4, "Mask of the Wild", "Hide when lightly obscured.", "You can attempt to hide even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena."); -- 7
------ Dark Elf
INSERT INTO SubRaceFeature VALUES (NULL, 5, "Superior Darkvision", "Darkvision to 120ft.", "Your darkvision has a radius of 120 feet."); -- 8
INSERT INTO SubRaceFeature VALUES (NULL, 5, "Sunlight Sensitivity", "Disadvantage on attacks and Perception in sunlight.", " You have disadvantage on attack rolls and Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight."); -- 9
INSERT INTO SubRaceFeature VALUES (NULL, 5, "Drow Magic", "You gain spells as you reach certain levels.", "You know the <i>dancing lights</i> cantrip. When you reach 3rd level, you can cast the <i>faerie fire</i> spell once with this trait and regain the ability to do so when you finish a log rest. When you reach 5th level, you can cast the <i>darkness</i> spell once with this trait and regain the ability to do so when you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 10
INSERT INTO SubRaceFeature VALUES (NULL, 5, "Drow Weapon Training", "Proficient with rapiers, shortswords, and hand crossbows.", "You have proficiency with rapiers, shortswords, and hand crossbows."); -- 11

-- Halfling
---- Race
INSERT INTO RaceFeature VALUES (NULL, 3, "Lucky", "Reroll natural 1s.", "When you roll a 1 on the d20 for an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll."); -- 8
INSERT INTO RaceFeature VALUES (NULL, 3, "Brave", "Advantage against frightened.", "You have advantage on saving throws against being frightened."); -- 9
INSERT INTO RaceFeature VALUES (NULL, 3, "Halfling Nimbleness", "Move through larger creatures space.", "You can move through the space of any creature that is of a size larger than yours."); -- 10
---- Subrace
------ Lightfoot
INSERT INTO SubRaceFeature VALUES (NULL, 6, "Naturally Stealthy", "Hide behind larger creatures.", "You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you."); -- 12
------ Stout
INSERT INTO SubRaceFeature VALUES (NULL, 7, "Stout Resilience", "Advantage and resistance against poison.", "You have advantage on saving throws against poison, and you have resistance against poison damage."); -- 13

-- Human
---- Race

-- Dragonborn
---- Race
INSERT INTO RaceFeature VALUES (NULL, 5, "Draconic Ancestry", "You gain resistance and an attack based on your colour.", "You have Draconic ancestry. Choose one type of dragon from the Draconic Ancestry table. Your breath weapon and damage resistance are determined by the dragon type, as shown in the table.<br><table class='table table-striped'><tr><th>Dragon</th><th>Damage Type</th><th>Breath Weapon</th></tr><tr><td>Black</td><td>Acid</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Blue</td><td>Lightning</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Brass</td><td>Fire</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Bronze</td><td>Lightning</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Copper</td><td>Acid</td><td>5 by 30 ft. line (Dex. save)</td></tr><tr><td>Gold</td><td>Fire</td><td>15 ft. cone (Dex. save)</td></tr><tr><td>Green</td><td>Poison</td><td>15 ft. cone (Con. save)</td></tr><tr><td>Red</td><td>Fire</td><td>15 ft. cone (Dex. save)</td></tr><tr><td>Silver</td><td>Cold</td><td>15 ft. cone (Con. save)</td></tr><tr><td>White</td><td>Cold</td><td>15 ft. cone (Con. save)</td></tr></table>"); -- 11
INSERT INTO RaceFeature VALUES (NULL, 5, "Breath Weapon", "Use your action to use your breath weapon once per rest.", "You can use your action to exhale destructive energy. Your draconic ancestry determines the size, shape, and damage type of the exhalation.<br>When you use your breath weapon, each creature in the area of the exhalation must make a saving throw, the type of which is determined by your draconic ancestry. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level, 4d6 at 11th level, and 5d6 at 16th level.<br>After you use your breath weapon, you can’t use it again until you complete a short or long rest."); -- 12
INSERT INTO RaceFeature VALUES (NULL, 5, "Damage Resistance", "Resistance based on your colour.", "You have resistance to the damage type associated with your draconic ancestry."); -- 13

-- Gnome
---- Race
INSERT INTO RaceFeature VALUES (NULL, 6, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 14
INSERT INTO RaceFeature VALUES (NULL, 6, "Gnome Cunning", "Advantage against magic based saving throws (INT, WIS, CHA).", "You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic."); -- 15
---- Subrace
------ Forest
INSERT INTO SubRaceFeature VALUES (NULL, 8, "Natural Illusionist", "You know <i>minor illusion</i>.", "You know the <i>minor illusion</i> cantrip. Intelligence is your spellcasting ability for it."); -- 14
INSERT INTO SubRaceFeature VALUES (NULL, 8, "Speak with Small Beasts", "Can communicate with Small or smaller beasts.", "Through sounds and gestures, you can communicate simple ideas with Small or smaller beasts. Forest gnomes love animals and often keep squirrels, badgers, rabbits, moles, woodpeckers, and other creatures as beloved pets."); -- 15
------ Rock
INSERT INTO SubRaceFeature VALUES (NULL, 9, "Artificer's Lore", "Add double proficiency to tinker based knowledge checks.", "Whenever you make an Intelligence (History) check related to magical items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonuses you normally apply."); -- 16
INSERT INTO SubRaceFeature VALUES (NULL, 9, "Tinker", "Spend time and resources to build a device.", "You have proficiency with artisan's tools (tinker's tools). Using these tools, you can spend 1 hour and 10gp worth of materials to construct a Tiny clockwork device (AD 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the material used to create it. You can have up to three such devices active at a time.<br>When you create a device, choose one of the following options:</br><i>Clockwork Toy.</i> This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents.<br><i>Fire Starter.</i> The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action.<br><i>Music Box.</i> When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song's end or when it is closed."); -- 17

-- Half-Elf
INSERT INTO RaceFeature VALUES (NULL, 7, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Thanks to your elf blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 16
INSERT INTO RaceFeature VALUES (NULL, 7, "Fey Ancestry", "Advantage against being charmed. Can't be magically put to sleep.", "You have advantage on saving throws against being charmed, and magic can't put you to sleep."); -- 17

-- Half-Orc
INSERT INTO RaceFeature VALUES (NULL, 8, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Thanks to your orc blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 18
INSERT INTO RaceFeature VALUES (NULL, 8, "Menacing", "Proficient at Intimidation.", "You gain proficiency in the Intimidation skill."); -- 19
INSERT INTO RaceFeature VALUES (NULL, 8, "Relentless Endurance", "Drop to 1 hit point instead of 0.", "When you are reduced to 0 hit points but not killed outright, you can drop 1 hit point instead. You can't use this feature again until you finish a long rest."); -- 20
INSERT INTO RaceFeature VALUES (NULL, 8, "Savage Attacks", "Extra weapon damage die on critical hit.", "When you score a critical hit with a melee weapon attack, you can roll one of the weapon's damage dice one additional time and add it to the extra damage of the critical hit."); -- 21

-- Tiefling
INSERT INTO RaceFeature VALUES (NULL, 9, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 22
INSERT INTO RaceFeature VALUES (NULL, 9, "Hellish Resistance", "Resistance to fire damage.", "You have resistance to fire damage."); -- 23
INSERT INTO RaceFeature VALUES (NULL, 9, "Infernal Legacy", "You gain spells as you reach certain levels.", "You know the <i>thaumaturgy</i> cantrip. When you reach 3rd level, you can cast the <i>hellish rebuke</i> spell as a 2nd-level spell once with this trait and regain the ability to do so when you finish a log rest. When you reach 5th level, you can cast the <i>darkness</i> spell once with this trait and regain the ability to do so when you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 24

-- Aasimar
---- Race
INSERT INTO RaceFeature VALUES (NULL, 10, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "Blessed with a radiant soul, your vision can cut through darkness. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 25
INSERT INTO RaceFeature VALUES (NULL, 10, "Celestial Resistance", "Resistance to necrotic and radiant damage.", "You have resistance to radiant damage and necrotic damage."); -- 26
INSERT INTO RaceFeature VALUES (NULL, 10, "Healing Hands", "Touch a creature as an action to heal it hit points equal to your level.", "As an action, you can touch a creature and cause it to regain a number of hit points equal to your level. Once you use this trait, you can't use it again until you finish a long rest."); -- 27
------ Protector
INSERT INTO SubRaceFeature VALUES (NULL, 10, "Radiant Soul", "After 3rd level use your action to grow wings for 1 minute and do extra radiant damage on attacks. Flying speed of 30ft.", "Starting at 3rd level, you can use your action to unleash the divine energy within yourself, causing your eyes to glimmer and two luminous, incorporeal wings to sprout from your back.<br>Your transformation lasts for 1 minute or until you end it as a bonus action. During it, you have a flying speed of 30 feet, and once on each of your turns, you can deal extra radiant damage to one target when you deal damage to it with an attack or a spell. The extra radiant damage equals your level.<br>Once you use this trait, you can't use it again until you finish a long rest."); -- 18
------ Scourge
INSERT INTO SubRaceFeature VALUES (NULL, 10, "Radiant Consumption", "After 3rd level use your action to cause AoE damage within 10ft. and do extra radiant damage on attacks", "Starting at 3rd level, you can use your action to unleash the divine energy within yourself, causing a searing light to radiate from you, pour out of your eyes and mouth, and threaten to char you.<br>Your transformation lasts for 1 minute or until you end it as a bonus action. During it, you shed bright light in a 10-foot radius and dim light for an additional 10 feet, and at the end of each of your turns, you and each creature within 10 feet of you take radiant damage equal to half your level (rounded up). In addition, once on each of your turns, you can deal extra radiant damage to one target when you deal damage to it with an attack or a spell. The extra radiant damage equals your level.<br>Once you use this trait, you can't use it again until you finish a long rest."); -- 19
------ Fallen
INSERT INTO SubRaceFeature VALUES (NULL, 10, "Necrotic Shroud", "After 3rd level use your action to frighten creatures within 10ft. and do extra necrotic damage on attacks.", "Starting at 3rd level, you can use your action to unleash the divine energy within yourself, causing your eyes to turn into pools of darkness and two skeletal, ghostly, flightless wings to sprout from your back. The instant you transform, other creatures within 10 feet of you that can see you must each succeed on a Charisma saving throw (DC 8 + your proficiency bonus + your Charisma modifier) or become frightened of you until the end of your next turn.<br>Your transformation lasts for 1 minute or until you end it as a bonus action. During it, once on each of your turns, you can deal extra necrotic damage to one target when you deal damage to it with an attack or a spell. The extra necrotic damage equals your level.<br>Once you use this trait, you can't use it again until you finish a long rest."); -- 20

-- Firbolg
INSERT INTO RaceFeature VALUES (NULL, 11, "Firbolg Magic", "You can cast either <i>detect magic</i> or <i>disguise self</i> once per rest.", "You can cast <i>detect magic</i> and <i>disguise self</i> with this trait, using Wisdom as your spellcasting ability for them. Once you cast either spell, you can't cast it again with this trait until you finish a short or long rest. When you use this version of <i>disguise self</i>, you can seem up to 3 feet shorter than normal, allowing you to more easily blend in with humans and elves."); -- 28
INSERT INTO RaceFeature VALUES (NULL, 11, "Hidden Step", "As a bonus action, you can magically turn invisible.", "As a bonus action, you can magically turn invisible until the start of your next turn or until you attack, make a damage roll, or force someone to make a saving throw. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 29
INSERT INTO RaceFeature VALUES (NULL, 11, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 30
INSERT INTO RaceFeature VALUES (NULL, 11, "Speech of Beast and Leaf", "You can communicate in a limited manner with beasts and plants.", "You have the ability to communicate in a limited manner with beasts and plants. They can understand the meaning of your words, though you have no special ability to understand them in return. You have advantage on all Charisma checks you make to influence them."); -- 31

-- Goliath
INSERT INTO RaceFeature VALUES (NULL, 12, "Stone's Endurance", "Use reaction to reduce damage by 1d12 + Constitution once per rest.", "You can focus yourself to occasionally shrug off injury. When you take damage, you can use your reaction to roll a dl2. Add your Constitution modifier to the number rolled, and reduce the damage by that total. After you use this trait, you can't use it again until you finish a short or long rest."); -- 32
INSERT INTO RaceFeature VALUES (NULL, 12, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 33
INSERT INTO RaceFeature VALUES (NULL, 12, "Mountain Born", "Acclimated to high altitude, naturally adapted to cold climates.", "You're acclimated to high altitude, including elevations above 20,000 feet. You're also naturally adapted to cold climates, as described in chapter 5 of the Dungeon Master's Guide."); -- 34

-- Kenku
INSERT INTO RaceFeature VALUES (NULL, 13, "Expert Forgery", "Advantage on checks to produce forgeries or duplicates of existing objects.", "You can duplicate other creatures' handwriting and craftwork. You have advantage on all checks made to produce forgeries or duplicates of existing objects."); -- 35
INSERT INTO RaceFeature VALUES (NULL, 13, "Mimicry", "You can mimic sounds you have heard, including voices.", "You can mimic sounds you have heard, including voices. A creature that hears the sounds you make can tell they are imitations with a successful Wisdom (Insight) check opposed by your Charisma (Deception) check."); -- 36

-- Lizardfolk
INSERT INTO RaceFeature VALUES (NULL, 14, "Bite", "Bite with unarmed attacks, deal piercing damage equal to 1d6 + your Strength.", "Your fanged maw is a natural weapon, which you can use to make unarmed strikes. If you hit with it, you deal piercing damage equal to 1d6 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 37
INSERT INTO RaceFeature VALUES (NULL, 14, "Cunning Artisan", "Make items from slain beasts during a short rest.", "As part of a short rest, you can harvest bone and hide from a slain beast, construct, dragon, monstrosity, or plant creature of size Small or larger to create one of the following items: a shield, a club, a javelin, or 1d4 darts or blowgun needles. To use this trait, you need a blade, such as a dagger, or appropriate artisan's tools, such as leatherworker's tools."); -- 38
INSERT INTO RaceFeature VALUES (NULL, 14, "Hold Breath", "You can hold your breath for up to 15 minutes at a time.", "You can hold your breath for up to 15 minutes at a time."); -- 39
INSERT INTO RaceFeature VALUES (NULL, 14, "Natural Armor", "Your AC is 13 + your Dexterity modifier.", "You have tough, scaly skin. When you aren't wearing armor, your AC is 13 + your Dexterity modifier. You can use your natural armor to determine your AC if the armor you wear would leave you with a lower AC. A shield's benefits apply as normal while you use your natural armor."); -- 40

-- Tabaxi
INSERT INTO RaceFeature VALUES (NULL, 15, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You have a cat's keen senses, especially in the dark. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 41
INSERT INTO RaceFeature VALUES (NULL, 15, "Feline Agility", NULL, "Your reflexes and agility allow you to move with a burst of speed. When you move on your turn in combat, you can double your speed until the end of the turn. Once you use this trait, you can't use it again until you move 0 feet on one of your turns."); -- 42
INSERT INTO RaceFeature VALUES (NULL, 15, "Cat's Claw", NULL, "Because of your claws, you have a climbing speed of 20 feet. In addition, your claws are natural weapons, which you can use to make unarmed strikes. If you hit with them, you deal slashing damage equal to 1d4 + your Strength modifier, instead of the bludgeoning damage normal for an unarmed strike."); -- 43

-- Triton
INSERT INTO RaceFeature VALUES (NULL, 16, "Amphibious", NULL, "You can breathe air and water."); -- 44
INSERT INTO RaceFeature VALUES (NULL, 16, "Control Air and Water", NULL, "A child of the sea, you can call on the magic of elemental air and water. You can cast <i>fog cloud</i> with this trait. Starting at 3rd level, you can cast <i>gust of wind</i> with it, and starting at 5th level, you can also cast <i>wall of water</i> with it (see the spell in the sidebar). Once you cast a spell with this trait, you can't do so again until you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 45
INSERT INTO RaceFeature VALUES (NULL, 16, "Emissary of the Sea", NULL, "Aquatic beasts have an extraordinary affinity with your people. You can communicate simple ideas with beasts that can breathe water. They can understand the meaning of your words, though you have no special ability to understand them in return."); -- 46
INSERT INTO RaceFeature VALUES (NULL, 16, "Guardians of the Depths", NULL, "Adapted to even the most extreme ocean depths, you have resistance to cold damage, and you ignore any of the drawbacks caused by a deep, underwater environment."); -- 47

-- Bugbear
INSERT INTO RaceFeature VALUES (NULL, 17, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 48
INSERT INTO RaceFeature VALUES (NULL, 17, "Long-Limbed", "Your reach increases by 5ft.", "When you make a melee attack on your turn, your reach for it is 5 feet greater than normal."); -- 49
INSERT INTO RaceFeature VALUES (NULL, 17, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 50
INSERT INTO RaceFeature VALUES (NULL, 17, "Surprise Attack", "If you hit a surprised creature deal extra 2d6 damage once per combat.", "If you surprise a creature and hit it with an attack on your first turn in combat, the attack deals an extra 2d6 damage to it. You can use this trait only once per combat."); -- 51

-- Goblin
INSERT INTO RaceFeature VALUES (NULL, 18, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 52
INSERT INTO RaceFeature VALUES (NULL, 18, "Fury of the Small", "Deal extra damage equal to your level when you hit a larger creature once per rest.", "When you damage a creature with an attack or a spell and the creature's size is larger than yours, you can cause the attack or spell to deal extra damage to the creature. The extra damage equals your level. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 53
INSERT INTO RaceFeature VALUES (NULL, 18, "Nimble Escape", "You can take the Disengage or Hide action as a bonus action on each of your turns.", "You can take the Disengage or Hide action as a bonus action on each of your turns."); -- 54

-- Hobgoblin
INSERT INTO RaceFeature VALUES (NULL, 19, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 55
INSERT INTO RaceFeature VALUES (NULL, 19, "Saving Face", "If you miss an attack, or fail an ability check or saving throw, add bonus equal to number of allies within 30ft. (max +5) once per rest.", "Hobgoblins are careful not to show weakness in front of their allies, for fear of losing status. If you miss with an attack roll or fail an ability check or a saving throw, you can gain a bonus to the roll equal to the number of allies you can see within 30 feet of you (maximum bonus of +5). Once you use this trait, you can't use it again until you finish a short or long rest."); -- 56

-- Kobold
INSERT INTO RaceFeature VALUES (NULL, 20, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 57
INSERT INTO RaceFeature VALUES (NULL, 20, "Grovel, Cower, and Beg", "Use your action to distract enemies within 10ft., allies gain advantage on attacks against them, once per rest.", "As an action on your turn, you can cower pathetically to distract nearby foes. Until the end of your next turn, your allies gain advantage on attack rolls against enemies within 10 feet of you that can see you. Once you use this trait, you can't use it again until you finish a short or long rest."); -- 58
INSERT INTO RaceFeature VALUES (NULL, 20, "Pack Tactics", "You have advantage on attacks if an ally is within 5ft.", "You have advantage on an attack roll against a creature if at least one of your allies is within 5 feet of the creature and the ally isn't incapacitated."); -- 59
INSERT INTO RaceFeature VALUES (NULL, 20, "Sunlight Sensitivity", "Disadvantage on attacks and Perception (sight) when in direct sunlight.", "You have disadvantage on attack rolls and on Wisdom (Perception) checks that rely on sight when you, the target of your attack, or whatever you are trying to perceive is in direct sunlight."); -- 60

-- Orc
INSERT INTO RaceFeature VALUES (NULL, 21, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 61
INSERT INTO RaceFeature VALUES (NULL, 21, "Aggressive", "Use a bonus action to move your speed towards and enemy.", "As a bonus action, you can move up to your speed toward an enemy of your choice that you can see or hear. You must end this move closer to the enemy than you started."); -- 62
INSERT INTO RaceFeature VALUES (NULL, 21, "Powerful Build", "You count as one size larger.", "You count as one size larger when determining your carrying capacity and the weight you can push, drag, or lift."); -- 63

-- Yuan-ti
INSERT INTO RaceFeature VALUES (NULL, 22, "Darkvision", "Can see in darkness within 60ft. as though dim light.", "You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can't discern color in darkness, only shades of gray."); -- 64
INSERT INTO RaceFeature VALUES (NULL, 22, "Innate Spellcasting", "You can cast <i>poison spray</i>, <i>animal friendship</i> (on snakes), and at 3rd level <i>suggestion</i>.", "You know the <i>poison spray</i> cantrip. You can cast <i>animal friendship</i> an unlimited number of times with this trait, but you can target only snakes with it. Starting at 3rd level, you can also cast <i>suggestion</i> with this trait. Once you cast it, you can't do so again until you finish a long rest. Charisma is your spellcasting ability for these spells."); -- 65
INSERT INTO RaceFeature VALUES (NULL, 22, "Magic Resistance", "You have advantage on saving throws against spells and other magical effects.", "You have advantage on saving throws against spells and other magical effects."); -- 66
INSERT INTO RaceFeature VALUES (NULL, 22, "Poison Immunity", "You are immune to poison damage and the poisoned condition.", "You are immune to poison damage and the poisoned condition."); -- 67