#!/bin/bash

# rsync copies home directory to encrypted drive
# variables
backupSource=/home/$USER
backupDest=/mnt/encrypt1/backup
log=$backupDest/logs/$USER-rsync.log

#if [ ! -d $backDir ] ; then 
#mkdir -p $backDir
#fi
#cp -a $HOME $backupDir 2>/dev/null

rsync --compress --prune-empty-dirs --archive --acls --human-readable --log-file=$log --exclude-from '/opt/scripts/excluded-from-rsync/excluded-backup-home.txt' $backupSource $backupDest











