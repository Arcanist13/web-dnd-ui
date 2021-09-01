'''Race models'''

from pydantic import BaseModel

class Race(BaseModel):
  '''D&D Race model'''
  id:           int
  name:         str

class SubRace(BaseModel):
  '''D&D SubRace model'''
  id:           int
  race_id:      int
  name:         str
