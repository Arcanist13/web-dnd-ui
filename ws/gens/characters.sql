DROP TABLE characters;
CREATE TABLE characters (
  id                      INTEGER PRIMARY KEY NOT NULL,
  name                    TEXT NOT NULL,
  level                   INTEGER NOT NULL,
  campaigns_id            INTEGER NOT NULL,
  description             TEXT,
  age                     TEXT,
  races_id                INTEGER,
  sub_races_id            INTEGER,
  classes_id              INTEGER,
  archetypes_id           INTEGER,
  class_sub_features      TEXT, -- List of choosen class sub features
  archetype_sub_features  TEXT, -- List of choosen archetype sub features
  FOREIGN KEY   (campaigns_id)    REFERENCES campaigns(id),
  FOREIGN KEY   (races_id)        REFERENCES races(id),
  FOREIGN KEY   (sub_races_id)    REFERENCES sub_races(id),
  FOREIGN KEY   (classes_id)      REFERENCES classes(id),
  FOREIGN KEY   (archetypes_id)   REFERENCES archetypes(id)
);
