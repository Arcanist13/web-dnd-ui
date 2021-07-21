'''Sqlite3 data manager.'''

import sqlite3

DATABASE_PATH = 'dbs/dnd.db'

### Database interactions
def get_db_all(query):
  '''Gets a list of results from the DB.'''
  try:
    db_connection = connect_db(DATABASE_PATH)
    cur = db_connection.execute(query)
    rows = cur.fetchall()
  except sqlite3.OperationalError as exception:
    rows = None
    print('ERROR (get_db_all): Failed to fetch all rows, query = "' + query + '".')
    print(exception)
  return rows

def get_db_one(query):
  '''Gets a single result from the DB.'''
  try:
    db_connection = connect_db(DATABASE_PATH)
    cur = db_connection.execute(query)
    row = cur.fetchone()
  except sqlite3.OperationalError as exception:
    row = None
    print('ERROR (get_db_one): Failed to fetch row, query = "' + query + '".')
    print(exception)
  return row

def connect_db(path):
  '''Connect to the DB'''
  try:
    engine = sqlite3.connect(path)
    engine.row_factory = dict_factory # sqlite3.Row
  except sqlite3.Error as exception:
    print(exception)
  return engine

def dict_factory(cursor, row):
  '''Cast SQL queries as a python dict object.'''
  data_dict = {}
  for idx, col in enumerate(cursor.description):
    data_dict[col[0]] = row[idx]
  return data_dict
