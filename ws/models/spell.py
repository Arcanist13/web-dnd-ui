'''Spell models'''

from typing import Optional
from pydantic import BaseModel

class Spell(BaseModel):
  '''D&D spell model.'''
  id:             int
  name:           str
  school:         Optional[str] = None
  level:          Optional[str] = None
  ritual:         Optional[str] = None
  cast_time:      Optional[str] = None
  range:          Optional[str] = None
  components:     Optional[str] = None
  duration:       Optional[str] = None
  description:    Optional[str] = None
  visual:         Optional[str] = None
  page:           Optional[str] = None
  damage:         Optional[str] = None
  attack_save:    Optional[str] = None
  classes:        Optional[str] = None
