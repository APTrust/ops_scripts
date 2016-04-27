#!/bin/bash

# Backup all fedora data, except the datastreamStore symlink, which
# runs under a separate back and goes to a different destination drive.

/usr/bin/ionice -c2 -n7 rsync -h -a -e "ssh \ 
ubuntu@repository.aptrust.org:/mnt/aptrust/ /mnt/aptrust/ \
--exclude "lost+found" \
--log-file=/home/ubuntu/aptrust_backup.log "
