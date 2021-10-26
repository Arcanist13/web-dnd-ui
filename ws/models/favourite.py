'''Favourite models'''

from typing import Optional
from pydantic import BaseModel

class FavouriteSpell(BaseModel):
  '''Spell Favourite'''
  id:             Optional[int] = None
  spell_id:       int
  character_id:   int

class FavouriteFeat(BaseModel):
  '''Feat Favourite'''
  id:             int
  feat_id:        int
  character_id:   int
