#!/bin/bash



docker run --rm \
        -v /srv/backup:/backup \
        -v ua-help-a_db_data:/data \
        debian:stretch-slim bash -c "cd /data && /bin/tar -xzvf /backup/ua-help.tar.gz"