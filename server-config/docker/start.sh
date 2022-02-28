#!/bin/bash
docker-compose rm -f
docker-compose pull
docker-compose -p ua-help-a up --force-recreate -d