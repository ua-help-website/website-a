#!/bin/bash
backupLocation="/srv/backup"

dockerDataLocation="ua-help-a_db_data"
wordpressDataLocation="/srv/www/wp-content"

docker run --rm \
    -v $backupLocation:/backup \
    -v $dockerDataLocation:/data:ro \
    debian:stretch-slim bash -c "cd /data && /bin/tar -czvf /backup/ua-help.tar.gz ."

tar -czvf $backupLocation/wp-backup.tar $wordpressDataLocation