'''Routes for D&D Feats'''

from typing import List
from fastapi import APIRouter
from fastapi.exceptions import HTTPException

from models.feat import Feat
from database.sqlite3 import get_db_all

router = APIRouter()
version = '1.0.0'

@router.get('/feats', tags=['feats'], response_model=List[Feat])
async def get_feats():
  '''Get all feats'''
  feats = get_db_all("SELECT * FROM feats ORDER BY name ASC")
  if feats is not None:
    return feats
  raise HTTPException(status_code=500, detail="Unable to get D&D feats.")
