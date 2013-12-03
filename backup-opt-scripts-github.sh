#!/bin/bash

# rsync copies opt/scripts directory to github/bash-scripts
# variables
backupSource=/opt/scripts
backupDest=/home/james/github/bash-scripts/
log=$backupSource/logs/$0.log

#if [ ! -d $backDir ] ; then
#mkdir -p $backDir
#fi
#cp -a $HOME $backupDir 2>/dev/null

rsync --compress --prune-empty-dirs --archive -acls --human-readable --log-file=$log $backupSource/ $backupDest/















