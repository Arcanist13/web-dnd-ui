'''Database user management and functions'''

import sqlite3
from datetime import datetime

from .sqlite3 import connect_db, DATABASE_PATH, get_db_one
from auth.auth_helpers import get_password_hash
from models.user_model import UserRegister

def create_user(user: UserRegister):
  '''Create a new database user'''
  query = ''' INSERT INTO users (username, hashed_password, admin, created, email, activity, characters)
             VALUES (?, ?, ?, ?, ?, ?, ?) '''
  try:
    db_user = [
      user.username,
      get_password_hash(user.password),
      0,
      int(datetime.utcnow().timestamp()),
      user.email,
      int(datetime.utcnow().timestamp()),
      ""
    ]
    db_connection = connect_db(DATABASE_PATH)
    cur = db_connection.execute(query, db_user)
    db_connection.commit()
    res = cur.lastrowid
  except sqlite3.OperationalError as e:
    res = None
    print('ERROR (create_user): Failed to create the user.')
    print(e)
  return res

def get_db_user(username: str):
  '''Get a user from the database'''
  return get_db_one("SELECT * FROM users WHERE username = '" + username + "'")
