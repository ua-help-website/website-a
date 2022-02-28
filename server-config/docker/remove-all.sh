#!/bin/bash
docker-compose rm -fs

sudo rm -rf ../wp-content/
docker system prune
docker volume prune
docker-compose down -v --rmi all --remove-orphans