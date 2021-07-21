UPDATE spells SET classes = '';
UPDATE spells SET classes = 'Bard' WHERE EXISTS ( SELECT * FROM bard_spells WHERE bard_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Cleric' WHERE EXISTS ( SELECT * FROM cleric_spells WHERE cleric_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Druid' WHERE EXISTS ( SELECT * FROM druid_spells WHERE druid_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Paladin' WHERE EXISTS ( SELECT * FROM paladin_spells WHERE paladin_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Ranger' WHERE EXISTS ( SELECT * FROM ranger_spells WHERE ranger_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Sorcerer' WHERE EXISTS ( SELECT * FROM sorcerer_spells WHERE sorcerer_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Warlock' WHERE EXISTS ( SELECT * FROM warlock_spells WHERE warlock_spells.name = spells.name );
UPDATE spells SET classes = classes || ',Wizard' WHERE EXISTS ( SELECT * FROM wizard_spells WHERE wizard_spells.name = spells.name );
