'''Routes for D&D spells.'''

from typing import List, Optional

from fastapi import APIRouter, HTTPException
from pydantic import BaseModel

from database.sqlite3 import get_db_all, get_db_one

router = APIRouter()

class Spell(BaseModel):
    '''D&D spell model.'''
    ID: int
    NAME: str
    CLASS: Optional[str] = None
    LEVEL: Optional[str] = None
    RITUAL: Optional[str] = None
    CASTTIME: Optional[str] = None
    RANGE: Optional[str] = None
    COMPONENTS: Optional[str] = None
    DURATION: Optional[str] = None
    DESCRIPTION: Optional[str] = None
    VISUAL: Optional[str] = None
    PAGE: Optional[str] = None
    DAMAGE: Optional[str] = None
    ATTACKSAVE: Optional[str] = None

### Spells
@router.get('/spell', tags=["spell"], response_model=List[Spell])
async def get_spells():
    '''Get all spells.'''
    spells = get_db_all("SELECT ID, NAME, CASTTIME, DAMAGE, ATTACKSAVE, COMPONENTS, DURATION FROM Spells")
    if spells is not None:
        return spells
    raise HTTPException(status_code=500, detail="An error occurred. Unable to load spells.")

@router.get('/spell/{spell_id}', tags=["spell"], response_model=Spell)
async def get_spell_id(spell_id: int):
    '''Get spell by id.'''
    spell = get_db_one("SELECT * FROM Spells WHERE ID = " + str(spell_id))
    if spell is not None:
        return spell
    msg = "Spell with id="+str(spell_id)+" not found."
    raise HTTPException(status_code=500, detail=msg)

### Classes
@router.get('/spell/class/{class_str}', tags=["spell"], response_model=List[Spell])
async def get_class_spells(class_str: str):
    '''Get spell list by class.'''
    spell = get_db_all('''
        SELECT ID, NAME, CASTTIME, DAMAGE, ATTACKSAVE, COMPONENTS, DURATION FROM SPELLS
        WHERE NAME IN (SELECT NAME FROM {class_name}SPELLS NOCASE) COLLATE NOCASE;
        '''.format(class_name=class_str.upper()))
    if spell is not None:
        return spell
    msg = "Spells under class " + class_str + " not found."
    raise HTTPException(status_code=500, detail=msg)
