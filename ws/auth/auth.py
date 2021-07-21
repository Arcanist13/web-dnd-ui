'''Authentication module managing OAuth authentication and verification'''

from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer

from datetime import datetime, timedelta
from jose import JWTError, jwt

from typing import Optional

from models.user_model import User, UserInDB
from database.user import get_db_user

from .auth_helpers import verify_password
from models.auth import TokenData

oauth2_scheme = OAuth2PasswordBearer(tokenUrl="token")

SECRET_KEY = "09d25e094faa6ca2556c818166b7a9563b93f7099f6f0f4caa6cf63b88e8d3e7"
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 6 * 60 #6hr timeout

def get_user(username: str):
  '''Get the user object from the database'''
  db_user = get_db_user(username)
  if db_user is not None:
    return UserInDB(**db_user)

def authenticate_user(username: str, password: str):
  '''Get the user information and check if their password authenticates'''
  user = get_user(username)
  if not user:
    return False
  if not verify_password(password, user.hashed_password):
    return False
  return user

async def get_current_user(token: str = Depends(oauth2_scheme)):
  '''Get the current user based on the token'''
  credentials_exception = HTTPException(
    status_code=status.HTTP_401_UNAUTHORIZED,
    detail="Could not validate credentials",
    headers={"WWW-Authenticate": "Bearer"},
  )
  try:
    payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
    username: str = payload.get("sub")
    if username is None:
      raise credentials_exception
    token_data = TokenData(username=username)
  except JWTError:
    raise credentials_exception
  user = get_user(username=token_data.username)
  if user is None:
    raise credentials_exception
  return user

def create_access_token(data: dict, expires_delta: Optional[timedelta] = None):
  '''Create a new token'''
  to_encode = data.copy()
  if expires_delta:
    expire = datetime.utcnow() + expires_delta
  else:
    expire = datetime.utcnow() + timedelta(minutes=30)
  to_encode.update({"exp": expire})
  encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
  return encoded_jwt

async def get_current_admin_user(current_user: User = Depends(get_current_user)):
  '''Check if the current user is an admin'''
  if not current_user.admin:
    raise HTTPException(status_code=401, detail="Unauthorised access")
  return current_user
