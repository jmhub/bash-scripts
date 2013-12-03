#!/bin/bash

# rsync copies opt directory to encrypted drive
# variables
backupSource=/opt
backupDest=/mnt/encrypt1/backup
log=$backupDest/logs/opt-rsync.log

#if [ ! -d $backDir ] ; then
#mkdir -p $backDir
#fi
#cp -a $HOME $backupDir 2>/dev/null

rsync --compress --prune-empty-dirs --archive -acls --human-readable --log-file=$log $backupSource $backupDest















