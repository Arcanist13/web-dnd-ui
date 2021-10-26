DROP TABLE favourite_spells;
CREATE TABLE favourite_spells(
  id              INTEGER PRIMARY KEY NOT NULL,
  spell_id        INTEGER NOT NULL,
  character_id    INTEGER NOT NULL,
  FOREIGN KEY (spell_id) REFERENCES spells(id),
  FOREIGN KEY (character_id) REFERENCES characters(id)
); --
