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
  archetyp_id             INTEGER,
  class_sub_feature       TEXT, -- List of choosen class sub features
  archetype_sub_feature   TEXT, -- List of choosen archetype sub features
  FOREIGN KEY   (user_id)         REFERENCES users(id),
  FOREIGN KEY   (campaigns_id)    REFERENCES campaigns(id),
  FOREIGN KEY   (races_id)        REFERENCES races(id),
  FOREIGN KEY   (sub_races_id)    REFERENCES sub_races(id),
  FOREIGN KEY   (classes_id)      REFERENCES classes(id),
  FOREIGN KEY   (archetypes_id)   REFERENCES archetypes(id)
);
