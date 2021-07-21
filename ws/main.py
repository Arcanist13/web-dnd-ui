from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

from routes import spells, classes, users

app = FastAPI()

# Setup routes
app.include_router(users.router)
app.include_router(spells.router)
app.include_router(classes.router)

# Setup CORS
origins = [
  "https://thearcanerepository.com",
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
