'''Class models'''

from typing import Optional
from pydantic import BaseModel

class ClassModel(BaseModel):
  '''D&D Class model'''
  id:           int
  name:         str

class ClassFeatureModel(BaseModel):
  '''D&D Class Feature model'''
  id:             int
  class_id:       int
  name:           str
  summary:        Optional[str] = None
  description:    Optional[str] = None
  level:          Optional[int] = None
  optional:       Optional[int] = None

class ClassSubFeatureModel(BaseModel):
  '''D&D Class Sub Feature model'''
  id:                 int
  class_feature_id:   int
  name:               str
  prerequisite:       Optional[str] = None
  description:        Optional[str] = None
  optional:           Optional[int] = None

class ClassArchetype(BaseModel):
  '''D&D SubRace model'''
  id:           int
  class_id:     int
  name:         str

class ClassArchetypeFeatureModel(BaseModel):
  '''D&D Class Archetype Feature model'''
  id:             int
  archetype_id:   int
  name:           str
  summary:        Optional[str] = None
  description:    Optional[str] = None
  level:          Optional[int] = None

class ClassArchetypeSubFeatureModel(BaseModel):
  '''D&D Class Archetype Sub Feature model'''
  id:                     int
  archetype_feature_id:   int
  name:                   str
  prerequisite:           Optional[str] = None
  description:            Optional[str] = None
  optional:               Optional[int] = None
