'''Routes for characters.'''

from typing import List
from fastapi import APIRouter, HTTPException, Depends

from database.sqlite3 import delete_id, execute, get_db_all, get_db_one

from auth.auth import get_current_user, get_current_admin_user
from models.user_model import User
from models.character import Character, NewCharacter

router = APIRouter()

### Characters
@router.get('/characters', response_model=List[Character], tags=["character"])
async def get_all_characters(user: User = Depends(get_current_user)):
  '''Get all characters.'''
  characters = get_db_all("SELECT * FROM characters WHERE user_id = ? ORDER BY id ASC", [user.id])
  return characters

@router.delete("/character/remove/{character_id}", tags=["character"])
async def remove_character(character_id: int, user: User = Depends(get_current_user)):
  '''Remove a character'''
  if character_id is not None and check_character(character_id, user.id):
    if not delete_id('characters', character_id):
      raise HTTPException(status_code=500, detail='Failed to delete character')
  else:
    raise HTTPException(status_code=500, detail='Failed to delete a character that is not yours')
  return

@router.post("/character/edit/{character_id}", tags=["character"])
async def edit_character(character_id: int, char: NewCharacter, user: User = Depends(get_current_user)):
  '''Edit an existing character'''
  if character_id is not None and check_character(character_id, user.id):
    execute('''
      UPDATE characters SET
      name = ?, level = ?, campaign_id = ?, description = ?, age = ?, race_id = ?, sub_race_id = ?, class_id = ?, archetype_id = ?
      WHERE id = ?
    ''', [char.name, char.level, char.campaign_id, char.description, char.age, char.race_id, char.sub_race_id, char.class_id, char.archetype_id, character_id])
  else:
    raise HTTPException(status_code=500, detail='Failed to modify a character that is not yours')
  return

@router.post("/character/add", tags=["character"])
async def add_character(character: NewCharacter, user: User = Depends(get_current_user)):
  '''Add a new campaign'''
  if character is not None:
    execute('''
      INSERT INTO characters
        (name, level, user_id, campaign_id, description, age, race_id, sub_race_id, class_id, archetype_id)
      VALUES
        (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', [
      character.name, character.level, character.user_id, character.campaign_id, character.description,
      character.age, character.race_id, character.sub_race_id, character.class_id, character.archetype_id
    ])
  return get_db_one('SELECT * FROM characters ORDER BY id DESC LIMIT 1')

def check_character(character_id: int, user_id: int) -> bool:
  '''Check if a character belongs to a user'''
  res = get_db_one("SELECT user_id FROM characters WHERE id = ?", [character_id])
  if res is not None and res['user_id'] == user_id:
    return True
  else:
    return False
