#!/bin/bash

# Backup fedora datastreams.

/usr/bin/ionice -c2 -n7 rsync -h -a -e "ssh ubuntu@repository.aptrust.org:/mnt/datastream/ /mnt/datastream/ \
--exclude "lost+found" \
--log-file=/home/ubuntu/datastream_backup.log "
