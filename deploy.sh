#!/bin/bash

# Frontend
ng build --configuration production
cp -fr /home/arcanist/repos/web-dnd-ui/dist/web-dnd-ui/* /home/arcanist/live/web-dnd-ui/ui

# Backend
sudo /home/arcanist/live/web-dnd-ui/ws/stop.sh
rsync -avr --exclude=*.db /home/arcanist/repos/web-dnd-ui/ws/ /home/arcanist/live/web-dnd-ui/ws
sudo /home/arcanist/live/web-dnd-ui/ws/start.sh
