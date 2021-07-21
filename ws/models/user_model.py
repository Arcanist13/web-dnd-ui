'''User models'''

from pydantic import BaseModel

class User(BaseModel):
  '''Base user information'''
  username:         str
  email:            str
  admin:            int
  created:          str
  activity:         str
  characters:       str

class UserInDB(User):
  '''Database user information'''
  hashed_password:  str

class UserRegister(BaseModel):
  '''User registration information'''
  username:         str
  password:         str
  email:            str
