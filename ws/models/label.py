'''Labels'''
from typing import Optional
from pydantic import BaseModel

class Label(BaseModel):
  '''Spell Labels'''
  id:           Optional[int] = None
  description:  str
  spell_id:     int
  char_id:      int
