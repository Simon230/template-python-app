#!/bin/bash

#remove old containers
bash docker_commands
docker build --no-cache -t python-app .
#docker run --name VM1 -t python-app 
docker run --name VM1 --mount type=bind,src=$(pwd)/lib,target=/app/lib -it python-app 
#docker run --name VM1 -it python-app 
