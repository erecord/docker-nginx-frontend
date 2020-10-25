#!/bin/bash

if [ -e ./nginx/default.conf.example ] && [ ! -e ./nginx/default.conf ];
then
  cp ./nginx/default.conf.example ./nginx/default.conf
fi


docker-compose restart $1
