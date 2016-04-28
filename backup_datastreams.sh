#!/bin/bash

# Backup fedora datastreams.

rsync -h -a ubuntu@repository.aptrust.org:/mnt/datastream/ /mnt/datastream/ \
--exclude "lost+found" \
--log-file=/home/ubuntu/datastream_backup.log 
