#!/bin/bash

# Backup all fedora data, except the datastreamStore symlink, which
# runs under a separate back and goes to a different destination drive.

rsync -h -a ubuntu@repository.aptrust.org:/mnt/aptrust/ /mnt/aptrust/ --exclude "lost+found" --log-file=/home/ubuntu/aptrust_backup.log -e "ssh -p1984" --temp-dir=/mnt/aptrust/temp
