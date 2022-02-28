#!/bin/bash
backupLocation="/srv/backup/"
dataLocation="ua-help-a_db_data"

docker run --rm \
    -v $backupLocation:/backup \
    -v $dataLocation:/data:ro \
    debian:stretch-slim bash -c "cd /data && /bin/tar -czvf /backup/ua-help.tar.gz ."
