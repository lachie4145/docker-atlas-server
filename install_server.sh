#!/bin/bash

GAME_PATH="/home/game/atlas-server"

docker run --rm -it -v $GAME_PATH:/mnt/atlas-server atlas-server