'''Class models'''

from pydantic import BaseModel

class ClassModel(BaseModel):
  '''D&D Class model'''
  id:           int
  name:         str

class ClassArchetype(BaseModel):
  '''D&D SubRace model'''
  id:           int
  class_id:     int
  name:         str
