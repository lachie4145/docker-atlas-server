#!/bin/bash
cd "$(pwd)/DockerBuild"

docker image rm atlas-server

docker build \
--build-arg UID=$(id -u) --build-arg GID=$(id -g) \
-t atlas-server .
