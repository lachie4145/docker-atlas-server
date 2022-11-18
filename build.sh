#!/bin/bash
cd "$(pwd)/DockerBuild"

docker build \
--build-arg UID=$(id -u) --build-arg GID=$(id -g) \
-t atlas-server .
