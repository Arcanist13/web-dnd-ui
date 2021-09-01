DROP TABLE characters;
CREATE TABLE characters (
  id                      INTEGER PRIMARY KEY NOT NULL,
  name                    TEXT NOT NULL,
  level                   INTEGER NOT NULL,
  user_id                 INTEGER NOT NULL,
  campaign_id             INTEGER NOT NULL,
  description             TEXT,
  age                     TEXT,
  race_id                 INTEGER,
  sub_race_id             INTEGER,
  class_id                INTEGER,
  archetype_id            INTEGER,
  FOREIGN KEY   (user_id)         REFERENCES users(id),
  FOREIGN KEY   (campaign_id)     REFERENCES campaigns(id),
  FOREIGN KEY   (race_id)         REFERENCES races(id),
  FOREIGN KEY   (sub_race_id)     REFERENCES sub_races(id),
  FOREIGN KEY   (class_id)        REFERENCES classes(id),
  FOREIGN KEY   (archetype_id)    REFERENCES archetypes(id)
);
