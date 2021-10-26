#!/bin/bash

screen -d -m -p 0 -S "webserver" bash -c "cd /home/arcanist/live/web-dnd-ui/ws; source /home/arcanist/live/web-dnd-ui/ws/venv/bin/activate; hypercorn main:app --bind 127.0.0.1:8000"
