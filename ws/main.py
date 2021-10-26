from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from routes import spells, classes, users, feats, campaign, character, race, favourites

app = FastAPI()

# Setup routes
app.include_router(users.router)
app.include_router(spells.router)
app.include_router(classes.router)
app.include_router(feats.router)
app.include_router(campaign.router)
app.include_router(character.router)
app.include_router(race.router)
app.include_router(favourites.router)

@app.get('/versions', tags=["general"])
async def get_versions():
  return [
    {"name": "_spells", "value": spells.version},
    {"name": "_classes", "value":  classes.version},
    {"name": "_feats", "value":  feats.version},
    {"name": "_races", "value":  race.version}
  ]

# Setup CORS
origins = [
  "https://thearcanerepository.com",
  "https://www.thearcanerepository.com",
  "http://192.168.1.21:4200",
  "http://localhost:4200"
]
app.add_middleware(
  CORSMiddleware,
  allow_origins=origins,
  allow_credentials=True,
  allow_methods=["*"],
  allow_headers=["*"]
)
