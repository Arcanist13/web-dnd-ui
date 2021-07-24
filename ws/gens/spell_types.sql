UPDATE spells SET classes = '';
UPDATE spells SET classes = 'Bard' WHERE EXISTS ( SELECT * FROM bard_spells WHERE bard_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Cleric' WHERE EXISTS ( SELECT * FROM cleric_spells WHERE cleric_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Druid' WHERE EXISTS ( SELECT * FROM druid_spells WHERE druid_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Paladin' WHERE EXISTS ( SELECT * FROM paladin_spells WHERE paladin_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Ranger' WHERE EXISTS ( SELECT * FROM ranger_spells WHERE ranger_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Sorcerer' WHERE EXISTS ( SELECT * FROM sorcerer_spells WHERE sorcerer_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Warlock' WHERE EXISTS ( SELECT * FROM warlock_spells WHERE warlock_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Wizard' WHERE EXISTS ( SELECT * FROM wizard_spells WHERE wizard_spells.name = spells.name );

UPDATE spells SET save_type = '';
UPDATE spells SET save_type = save_type || ',Dexterity' WHERE description LIKE '%Dexterity saving throw%'; -- DEX
UPDATE spells SET save_type = save_type || ',Strength' WHERE description LIKE '%Strength saving throw%'; -- STR
UPDATE spells SET save_type = save_type || ',Constitution' WHERE description LIKE '%Constitution saving throw%'; -- CON
UPDATE spells SET save_type = save_type || ',Intelligence' WHERE description LIKE '%Intelligence saving throw%'; -- INT
UPDATE spells SET save_type = save_type || ',Charisma' WHERE description LIKE '%Charisma saving throw%'; -- CHA
UPDATE spells SET save_type = save_type || ',Wisdom' WHERE description LIKE '%Wisdom saving throw%'; -- WIS

UPDATE spells SET attack_type = '';
UPDATE spells SET attack_type = attack_type || ',Ranged' WHERE description LIKE '%ranged spell attack%'; -- Ranged
UPDATE spells SET attack_type = attack_type || ',Melee' WHERE description LIKE '%melee spell attack%'; -- Melee

UPDATE spells SET damage_type = '';
UPDATE spells SET damage_type = damage_type || ',Acid' WHERE description LIKE '%Acid damage%'; -- Acid
UPDATE spells SET damage_type = damage_type || ',Bludgeoning' WHERE description LIKE '%Bludgeoning damage%'; -- Bludgeoning
UPDATE spells SET damage_type = damage_type || ',Cold' WHERE description LIKE '%Cold damage%'; -- Cold
UPDATE spells SET damage_type = damage_type || ',Fire' WHERE description LIKE '%Fire damage%'; -- Fire
UPDATE spells SET damage_type = damage_type || ',Force' WHERE description LIKE '%Force damage%'; -- Force
UPDATE spells SET damage_type = damage_type || ',Lightning' WHERE description LIKE '%Lightning damage%'; -- Lightning
UPDATE spells SET damage_type = damage_type || ',Necrotic' WHERE description LIKE '%Necrotic damage%'; -- Necrotic
UPDATE spells SET damage_type = damage_type || ',Piercing' WHERE description LIKE '%Piercing damage%'; -- Piercing
UPDATE spells SET damage_type = damage_type || ',Poison' WHERE description LIKE '%Poison damage%'; -- Poison
UPDATE spells SET damage_type = damage_type || ',Psychic' WHERE description LIKE '%Psychic damage%'; -- Psychic
UPDATE spells SET damage_type = damage_type || ',Radiant' WHERE description LIKE '%Radiant damage%'; -- Radiant
UPDATE spells SET damage_type = damage_type || ',Slashing' WHERE description LIKE '%Slashing damage%'; -- Slashing
UPDATE spells SET damage_type = damage_type || ',Thunder' WHERE description LIKE '%Thunder damage%'; -- Thunder

UPDATE spells SET condition_type = '';
UPDATE spells SET condition_type = condition_type || ',Blinded' WHERE description LIKE '%Blinded%';
UPDATE spells SET condition_type = condition_type || ',Charmed' WHERE description LIKE '%Charmed%';
UPDATE spells SET condition_type = condition_type || ',Deafened' WHERE description LIKE '%Deafened%';
UPDATE spells SET condition_type = condition_type || ',Exhaustion' WHERE description LIKE '%Exhaustion%';
UPDATE spells SET condition_type = condition_type || ',Frightened' WHERE description LIKE '%Frightened%';
UPDATE spells SET condition_type = condition_type || ',Grappled' WHERE description LIKE '%Grappled%';
UPDATE spells SET condition_type = condition_type || ',Incapacitated' WHERE description LIKE '%Incapacitated%';
UPDATE spells SET condition_type = condition_type || ',Invisible' WHERE description LIKE '%Invisible%';
UPDATE spells SET condition_type = condition_type || ',Paralyzed' WHERE description LIKE '%Paralyzed%';
UPDATE spells SET condition_type = condition_type || ',Petrified' WHERE description LIKE '%Petrified%';
UPDATE spells SET condition_type = condition_type || ',Poisoned' WHERE description LIKE '%Poisoned%';
UPDATE spells SET condition_type = condition_type || ',Prone' WHERE description LIKE '%Prone%';
UPDATE spells SET condition_type = condition_type || ',Restrained' WHERE description LIKE '%Restrained%';
UPDATE spells SET condition_type = condition_type || ',Stunned' WHERE description LIKE '%Stunned%';
UPDATE spells SET condition_type = condition_type || ',Unconscious' WHERE description LIKE '%Unconscious%';
