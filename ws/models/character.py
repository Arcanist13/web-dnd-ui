from typing import Optional
from pydantic import BaseModel

class Character(BaseModel):
  '''D&D character model.'''
  id:                     int
  name:                   str
  user_id:                int
  campaign_id:            int
  race_id:                int
  class_id:               int
  level:                  int
  description:            Optional[str] = None
  age:                    Optional[int] = None
  sub_race_id:            Optional[int] = None
  archetype_id:           Optional[int] = None

class NewCharacter(BaseModel):
  name:                   str
  user_id:                int
  campaign_id:            int
  race_id:                int
  class_id:               int
  level:                  int
  description:            Optional[str] = None
  age:                    Optional[int] = None
  sub_race_id:            Optional[int] = None
  archetype_id:           Optional[int] = None
