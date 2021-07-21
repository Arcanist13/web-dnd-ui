DROP TABLE characters;
CREATE TABLE characters (
  id            INTEGER PRIMARY KEY NOT NULL,
  name          TEXT NOT NULL,
  level         INTEGER NOT NULL,
  tab_order     TEXT NOT NULL,
  race_id       INTEGER,
  sub_race_id   INTEGER,
  class_id      INTEGER,
  archetype_id  INTEGER,
  FOREIGN KEY   (race_id)       REFERENCES race(id),
  FOREIGN KEY   (sub_race_id)   REFERENCES race(id),
  FOREIGN KEY   (class_id)      REFERENCES class(id),
  FOREIGN KEY   (archetype_id)  REFERENCES archetype(id),
);
