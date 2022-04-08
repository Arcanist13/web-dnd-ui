'''Routes for D&D User Favourites'''

from typing import List
from fastapi import APIRouter, HTTPException, Depends

from database.sqlite3 import get_db_all, execute
from auth.auth import get_current_user

from models.favourite import FavouriteSpell
from models.user_model import User
from routes.character import check_character
from models.spell import Spell

router = APIRouter()

spell_partial = 'id, name, school, level, ritual, cast_time, range, components, duration, damage_type, save_type, attack_type, condition_type'

@router.get('/favourite/spell_ids/{character_id}', tags=["favourite"], response_model=List[FavouriteSpell])
async def get_favourite_spell_ids(character_id: int, user: User = Depends(get_current_user)):
  '''Get all favourite spells'''
  if character_id is not None and check_character(character_id, user.id):
    spells = get_db_all("SELECT * from favourite_spells WHERE character_id = ?", [character_id])
    return spells
  else:
    raise HTTPException(status_code=500, detail='Failed to get favourite spells for a character that is not yours')

@router.get('/favourite/spells/{character_id}', tags=["favourite"], response_model=List[Spell])
async def get_favourite_spells(character_id: int, user: User = Depends(get_current_user)):
  '''Get all favourite spells'''
  if character_id is not None and check_character(character_id, user.id):
    spells = get_db_all("SELECT " + spell_partial + " from spells WHERE spells.id IN (select spell_id FROM favourite_spells WHERE favourite_spells.character_id = ?) ORDER BY level ASC", [character_id])
    return spells
  else:
    raise HTTPException(status_code=500, detail='Failed to get favourite spells for a character that is not yours')

@router.post('/favourite/spell', tags=["favourite"])
async def add_favourite_spell(fav: FavouriteSpell, user: User = Depends(get_current_user)):
  if fav.spell_id is not None and fav.character_id is not None and check_character(fav.character_id, user.id):
    execute('''
      INSERT INTO favourite_spells (spell_id, character_id) VALUES (?, ?)
    ''', [fav.spell_id, fav.character_id])
  else:
    raise HTTPException(status_code=500, detail='Failed to favourite a spell for a character that is not yours')
  return

@router.delete('/favourite/spell/{character_id}/{spell_id}', tags=["favourite"])
async def remove_favourite_spell(character_id: int, spell_id: int, user: User = Depends(get_current_user)):
  if spell_id is not None and character_id is not None and check_character(character_id, user.id):
    execute('''
      DELETE FROM favourite_spells WHERE character_id = ? AND spell_id = ?
    ''', [character_id, spell_id])
  else:
    raise HTTPException(status_code=500, detail='Failed to delete favourite spell for a character that is not yours')
  return
