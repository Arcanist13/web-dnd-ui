'''Campaign models'''

from typing import Optional
from pydantic import BaseModel

class Campaign(BaseModel):
  '''D&D campaign model.'''
  id:             int
  name:           str
  brief:          Optional[str] = None

class EditCampaign(BaseModel):
  name:           Optional[str] = None
  brief:          Optional[str] = None

class NewCampaign(BaseModel):
  name:           str
  brief:          Optional[str] = None
