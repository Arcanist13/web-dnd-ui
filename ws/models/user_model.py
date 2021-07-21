'''User models'''

from pydantic import BaseModel

class User(BaseModel):
  username:         str
  email:            str
  admin:            int
  created:          str
  activity:         str
  characters:       str

class UserInDB(User):
  hashed_password:  str

class UserRegister(BaseModel):
  username:         str
  password:         str
  email:            str
