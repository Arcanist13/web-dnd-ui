'''Routes for D&D spells.'''

from typing import List
from fastapi import APIRouter, HTTPException

from database.sqlite3 import get_db_all, get_db_one
from models.spell import Spell

router = APIRouter()

### Spells
@router.get('/spells', tags=["spell"], response_model=List[Spell])
async def get_spells():
  '''Get all spells.'''
  spells = get_db_all("SELECT id, name, level, cast_time, damage, attack_save, components, duration FROM spells ORDER BY name ASC")
  if spells is not None:
    return spells
  raise HTTPException(status_code=500, detail="An error occurred. Unable to load spells.")

@router.get('/spell/{spell_id}', tags=["spell"], response_model=Spell)
async def get_spell_id(spell_id: int):
  '''Get spell by id.'''
  spell = get_db_one("SELECT * FROM spells WHERE id = " + str(spell_id) + "  ORDER BY name ASC")
  if spell is not None:
    return spell
  msg = "Spell with id=" + str(spell_id) + " not found."
  raise HTTPException(status_code=500, detail=msg)

### Classes
@router.get('/spell/class/{class_str}', tags=["spell"], response_model=List[Spell])
async def get_class_spells(class_str: str):
  '''Get spell list by class.'''
  spell = get_db_all('''
    SELECT id, name, level, cast_time, damage, attack_save, components, duration FROM spells
    WHERE name IN (SELECT name FROM {class_name}_spells NOCASE) COLLATE NOCASE ORDER BY name ASC
    '''.format(class_name=class_str.lower()))
  if spell is not None:
    return spell
  msg = "Spells under class " + class_str + " not found."
  raise HTTPException(status_code=500, detail=msg)
