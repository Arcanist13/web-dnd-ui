'''Routes for classes.'''

from fastapi import APIRouter, HTTPException

from database.sqlite3 import get_db_all

router = APIRouter()

### Class
@router.get('/classes', tags=["classes"])
async def get_all_classes():
  '''Get all classes.'''
  classes = get_db_all("SELECT * FROM Class")
  if classes is not None:
    return classes
  raise HTTPException(status_code=500, detail="An error occurred. Unable to load classes.")
