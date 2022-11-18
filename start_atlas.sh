#!/bin/bash

ADMIN_PASS="123"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

SETTINGS_STRING="Ocean?ServerAdminPassword=$ADMIN_PASS?ServerX=0?ServerY=0?MaxPlayers=10?ReservedPlayerSlots=5?QueryPort=57555?Port=5755?RCONEnabled=true?RCONPort=28000?SeamlessIP=10.0.0.49 -NoBattlEye -log -server"
  
docker run -d -t --name=atlas-server \
--net=host \
-v /home/game/atlas-server:/mnt/atlas-server \
atlas-server start-server $SETTINGS_STRING