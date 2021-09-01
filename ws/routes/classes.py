'''Routes for classes.'''

from typing import List
from fastapi import APIRouter, HTTPException

from database.sqlite3 import get_db_all
from models.classes import ClassArchetype, ClassModel

router = APIRouter()

### Class
@router.get('/classes', tags=['classes'], response_model=List[ClassModel])
async def get_classes():
  '''Get all classes'''
  classes = get_db_all("SELECT * FROM classes ORDER BY name ASC")
  if classes is not None:
    return classes
  raise HTTPException(status_code=500, detail="Unable to get D&D classes.")

@router.get('/archetypes', tags=['classes'], response_model=List[ClassArchetype])
async def get_classes():
  '''Get all archetypes'''
  archetypes = get_db_all("SELECT * FROM archetypes ORDER BY name ASC")
  if archetypes is not None:
    return archetypes
  raise HTTPException(status_code=500, detail="Unable to get D&D archetypes.")
