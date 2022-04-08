DROP TABLE labels;
CREATE TABLE labels(
  id            INTEGER PRIMARY KEY NOT NULL,
  description   TEXT NOT NULL,
  spell_id      INTEGER NOT NULL,
  char_id       INTEGER NOT NULL,
  FOREIGN KEY (spell_id) REFERENCES spells(id),
  FOREIGN KEY (char_id) REFERENCES characters(id)
)
