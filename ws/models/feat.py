'''Feat models'''

from typing import Optional
from pydantic import BaseModel

class Feat(BaseModel):
  '''D&D Feat model'''
  id:           int
  name:         str
  description:  str
  prerequisite: Optional[str] = None
  source:       str
