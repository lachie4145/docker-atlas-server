#!/bin/bash

GAME_PATH="/home/game/atlas-server"
ADMIN_PASS="123"
PUBLIC_IP="10.0.0.49"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

SETTINGS_STRING="Ocean?ServerAdminPassword=$ADMIN_PASS?ServerX=0?ServerY=0?MaxPlayers=10?ReservedPlayerSlots=5?QueryPort=57555?Port=5755?RCONEnabled=true?RCONPort=28000?SeamlessIP=$PUBLIC_IP -NoBattlEye -log -server"
  
docker run -d -t --name=atlas-server \
--net=host \
-v $GAME_PATH:/mnt/atlas-server \
atlas-server start-server $SETTINGS_STRING