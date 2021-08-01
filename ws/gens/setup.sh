#!/bin/bash

# General Info
sqlite3 < spells.sql
# sqlite3 < spell_types.sql
sqlite3 < feats.sql

# Character Stuff
sqlite3 < races.sql
sqlite3 < class_spells.sql
sqlite3 < classes.sql
sqlite3 < backgrounds.sql

# Campaign Stuff
sqlite3 < campaigns.sql
sqlite3 < characters.sql

# Users
# sqlite3 < users.sql
