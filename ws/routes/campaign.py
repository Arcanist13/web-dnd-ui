'''Routes for campaigns.'''

from typing import List
from fastapi import APIRouter, HTTPException, Depends

from database.sqlite3 import delete_id, execute, get_db_all, get_db_one

from auth.auth import get_current_user, get_current_admin_user
from models.user_model import User
from models.campaign import Campaign, EditCampaign, NewCampaign

router = APIRouter()

### Campaigns
@router.get('/campaigns', response_model=List[Campaign], tags=["campaigns"])
async def get_all_campaigns(user: User = Depends(get_current_user)):
  '''Get all campaigns.'''
  campaigns = get_db_all("SELECT * FROM campaigns ORDER BY id ASC")
  if campaigns is not None:
    return campaigns
  raise HTTPException(status_code=500, detail="An error occurred. Unable to load campaigns.")

@router.delete("/campaign/remove/{campaign_id}", tags=["campaigns"])
async def remove_campaign(campaign_id: int, user: User = Depends(get_current_admin_user)):
  '''Remove a campaign'''
  if campaign_id is not None:
    if not delete_id('campaigns', campaign_id):
      raise HTTPException(status_code=500, detail='Failed to delete campaign')
  return

@router.post("/campaign/edit/{campaign_id}", tags=["campaigns"])
async def edit_campaign(campaign_id: int, campaign: EditCampaign, user: User = Depends(get_current_admin_user)):
  '''Edit an existing campaign'''
  if campaign_id is not None:
    if campaign.name is not None:
      execute('''
        UPDATE campaigns SET name = ?
        WHERE id = ?
      ''', [campaign.name, campaign_id])
    if campaign.brief is not None:
      execute('''
        UPDATE campaigns SET brief = ?
        WHERE id = ?
      ''', [campaign.brief, campaign_id])
  return

@router.post("/campaign/add", tags=["campaigns"])
async def add_campaign(campaign: NewCampaign, user: User = Depends(get_current_admin_user)):
  '''Add a new campaign'''
  if campaign is not None:
    execute('''
      INSERT INTO campaigns (name, brief) VALUES (?, ?)
    ''', [campaign.name, campaign.brief])
  return get_db_one('SELECT * FROM campaigns ORDER BY id DESC LIMIT 1')
