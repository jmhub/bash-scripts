#!/bin/bash

# rsync copies /opt/script directory to /home/james/github
# variables
backupSource=/opt/scripts
backupDest=/home/james/github/bash-scripts
log=$backupSource/logs/`basename $0`
HOST=`hostname`

if [ -d $backupSource -a -d $backupDest ] ; then 

	rsync --update --itemize-changes --perms --progress --human-readable --log-file=$log $backupSource/* $backupDest
	cd $backupDest && git pull origin master && git add * && git commit -m "automated update from $HOST" && git push origin master
	
else
echo -e "Source $backupSource or Destination $backupDest does not exist \n"
fi










