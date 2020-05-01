#!/bin/bash

help_text="Usage: $0 {setup|update|build|up|down|cleanup}"
docker_build="docker-compose pull && docker-compose build"

help_text_redis="Usage: $1 {up|down}"

if [ $# -lt 1 ]
then
    echo $help_text
    exit
fi

case "$1" in
setup)  echo "Team44: Setting up repositories and building containers..."
    git clone --recursive git@github.com:ccc-team44/react-app.git
    mkdir -p react-app/node_modules
    git clone --recursive git@github.com:ccc-team44/django-server.git
    eval $docker_build
    ;;
update) echo "Team44: Updating repositories and rebuilding containers..."
    cd react-app
    git fetch --all --prune
    git checkout master
    git pull origin master

    cd ../django-server
    git fetch --all --prune
    git checkout master
    git pull origin master

    cd ..
    eval $docker_build
    ;;
build)  echo "Team44: Building containers..."
    eval $docker_build
    ;;
up) echo "Team44: Starting up development stack..."
    docker-compose up
    ;;
down)   echo "Team44: Stopping development stack..."
    docker-compose down
    ;;
cleanup)    echo "Team44: Cleaning up development stack..."
    docker-compose rm -s -v
    docker image prune -f
    ;;
*)  echo $help_text
    ;;
esac
