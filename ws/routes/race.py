'''Routes for D&D Races'''

from typing import List
from fastapi import APIRouter
from fastapi.exceptions import HTTPException

from models.race import Race, SubRace
from database.sqlite3 import get_db_all

router = APIRouter()
version = '1.0.0'

@router.get('/races', tags=['races'], response_model=List[Race])
async def get_races():
  '''Get all races'''
  races = get_db_all("SELECT * FROM races ORDER BY name ASC")
  if races is not None:
    return races
  raise HTTPException(status_code=500, detail="Unable to get D&D races.")

@router.get('/subraces', tags=['races'], response_model=List[SubRace])
async def get_subraces():
  '''Get all subraces'''
  subraces = get_db_all("SELECT * FROM sub_races ORDER BY name ASC")
  if subraces is not None:
    return subraces
  raise HTTPException(status_code=500, detail="Unable to get D&D subraces.")
