'''Routes for classes.'''

from typing import List
from fastapi import APIRouter, HTTPException

from database.sqlite3 import get_db_all, get_db_one
from models.classes import ClassArchetype, ClassArchetypeFeatureModel, ClassArchetypeSubFeatureModel, ClassFeatureModel, ClassModel, ClassSubFeatureModel

router = APIRouter()
version = '1.0.0'

### Class
@router.get('/classes', tags=['classes'], response_model=List[ClassModel])
async def get_classes():
  '''Get all classes'''
  classes = get_db_all("SELECT * FROM classes ORDER BY name ASC")
  if classes is not None:
    return classes
  raise HTTPException(status_code=500, detail="Unable to get D&D classes.")

@router.get('/class/{class_id}', tags=['classes'], response_model=ClassModel)
async def get_class(class_id: int):
  '''Get a specific class'''
  cls = get_db_one("SELECT * FROM classes WHERE id = ?", [class_id])
  if cls is not None:
    return cls
  raise HTTPException(status_code=500, detail="Unable to get D&D class.")

@router.get('/class/{class_id}/features', tags=['classes'], response_model=List[ClassFeatureModel])
async def get_class_features(class_id: int):
  '''Get a specific class features'''
  cls = get_db_all("SELECT * FROM class_features WHERE class_id = ? ORDER BY level ASC", [class_id])
  if cls is not None:
    return cls
  raise HTTPException(status_code=500, detail="Unable to get D&D class features.")

@router.get('/class/{class_feature_id}/subfeatures', tags=['classes'], response_model=List[ClassSubFeatureModel])
async def get_class_subfeatures(class_feature_id: int):
  '''Get a specific class subfeatures'''
  cls = get_db_all("SELECT * FROM class_sub_features WHERE class_feature_id = ?", [class_feature_id])
  if cls is not None:
    return cls
  raise HTTPException(status_code=500, detail="Unable to get D&D class sub features.")


### Archetypes
@router.get('/archetypes', tags=['classes'], response_model=List[ClassArchetype])
async def get_archetypes():
  '''Get all archetypes'''
  archetypes = get_db_all("SELECT * FROM archetypes ORDER BY name ASC")
  if archetypes is not None:
    return archetypes
  raise HTTPException(status_code=500, detail="Unable to get D&D class archetypes.")

@router.get('/archetype/{archetype_id}', tags=['classes'], response_model=ClassArchetype)
async def get_archetype(archetype_id: int):
  '''Get a specific archetype'''
  arch = get_db_one("SELECT * FROM archetypes WHERE id = ?", [archetype_id])
  if arch is not None:
    return arch
  raise HTTPException(status_code=500, detail="Unable to get D&D class archetype.")

@router.get('/archetype/{archetype_id}/features', tags=['classes'], response_model=List[ClassArchetypeFeatureModel])
async def get_archetype_features(archetype_id: int):
  '''Get a specific class archetype features'''
  cls = get_db_all("SELECT * FROM archetype_features WHERE archetype_id = ?", [archetype_id])
  if cls is not None:
    return cls
  raise HTTPException(status_code=500, detail="Unable to get D&D class archetype features.")

@router.get('/archetype/{archetype_feature_id}/subfeatures', tags=['classes'], response_model=List[ClassArchetypeSubFeatureModel])
async def get_archetype_subfeatures(archetype_feature_id: int):
  '''Get a specific class archetype sub features'''
  cls = get_db_all("SELECT * FROM class_sub_features WHERE archetype_feature_id = ?", [archetype_feature_id])
  if cls is not None:
    return cls
  raise HTTPException(status_code=500, detail="Unable to get D&D class archetype sub features.")
