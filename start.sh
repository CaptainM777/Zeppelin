#!/bin/bash

if [[ $1 = '-b' ]];
then 
  if [[ $2 = '-d' ]];
  then
    docker compose -f docker-compose.standalone.yml up -d --build
  else
    docker compose -f docker-compose.standalone.yml build
  fi
elif [[ $1 = '-d' ]];
then
  docker compose -f docker-compose.standalone.yml up -d # Don't attach to containers
else
  docker compose -f docker-compose.standalone.yml up # Attach to containers
fi