'''Router class for user related queries.'''

from fastapi import APIRouter, Depends, HTTPException, status
from fastapi.security import OAuth2PasswordRequestForm

from datetime import timedelta

from auth.auth import authenticate_user, ACCESS_TOKEN_EXPIRE_MINUTES, create_access_token, get_current_user, get_current_admin_user
from database.user import create_user
from models.user_model import User, UserRegister
from models.auth import Token

router = APIRouter()

@router.post("/token", response_model=Token, tags=['user'])
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends()):
  '''Get a new token for a given user'''
  user = authenticate_user(form_data.username, form_data.password)
  if not user:
    raise HTTPException(
      status_code=status.HTTP_401_UNAUTHORIZED,
      detail="Incorrect username or password",
      headers={"WWW-Authenticate": "Bearer"},
    )
  access_token_expires = timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
  access_token = create_access_token(
    data={"sub": user.username}, expires_delta=access_token_expires
  )
  return {"access_token": access_token, "token_type": "bearer"}

@router.get("/users/me/", response_model=User, tags=['user'])
async def read_users_me(current_user: User = Depends(get_current_user)):
  '''Get the current user information'''
  return current_user

@router.get("/users/me/items/", tags=['user'])
async def read_own_items(current_user: User = Depends(get_current_admin_user)):
  '''Test admin route'''
  return [{"item_id": "Foo", "owner": current_user.username}]

@router.post("/register", tags=['user'])
async def register_user(user_data: UserRegister):
  '''Register a new user account'''
  res = create_user(user_data)
  if res is not None:
    return {"res": res}
  else:
    raise HTTPException(status_code=500, detail='Failed to create user')
