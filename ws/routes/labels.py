'''Routes for D&D Labels'''

from typing import List
from fastapi import APIRouter, Depends, HTTPException
from auth.auth import get_current_user
from database.sqlite3 import execute, get_db_all, get_db_one
from models.user_model import User
from models.label import Label
from routes.character import check_character

router = APIRouter()

@router.get("/labels/{char_id}", tags=["label"], response_model=List[Label])
async def get_user_labels(char_id: int, user: User = Depends(get_current_user)):
  '''Get all labels for a user'''
  if char_id is not None and check_character(char_id, user.id):
    labels = get_db_all("select * from labels where char_id = ?", [char_id])
    return labels
  else:
    raise HTTPException(status_code=500, detail="Failed to get spell labels")

@router.post("/label/add/{char_id}", tags=["label"])
async def add_label(char_id: int, label: Label, user: User = Depends(get_current_user)):
  '''Add a label for a user'''
  if label.description is not None and label.char_id is not None and label.spell_id is not None and check_character(char_id, user.id):
    execute("insert into labels (description, spell_id, char_id) values (?, ?, ?)", [label.description, label.spell_id, char_id])
  else:
    raise HTTPException(status_code=500, detail='Failed to label to spell')
  return get_db_one('select * from labels where char_id = ? ORDER BY id DESC LIMIT 1', [char_id])

@router.delete("/label/{char_id}/{label_id}", tags=["label"])
async def delete_label(char_id: int, label_id: int, user: User = Depends(get_current_user)):
  '''Remove a users label'''
  if label_id is not None and char_id is not None and check_character(char_id, user.id):
    execute("delete from labels where id = ? and char_id = ?", [label_id, char_id])
  else:
    raise HTTPException(status_code=500, detail='Failed to delete label from spell')
  return
