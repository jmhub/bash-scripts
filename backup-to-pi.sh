#!/bin/bash
# Backup script rsync path(s) to a mountpoint
# Test last run was successful or is still running by checking for a pid file
# create pid file if doesn't exist
# record start time and end time - email this
# test drive is available - what is the exit codes when does not exist?
# eg if [ -f /var/$NAMEOFSCRIPT.pid ] ; then
# pid still there exit 1
# elif
# else report (email?) error on attach/mount or pid still existing

# exit 0 = successful exit
# exit 1 = pid file exists (previous mirror still running?)
# exit 2 = unable to mount
# exit 3 = unable to create pid
# exit 4 = $DESTINATION does not exist and cannot create. Permissions issue?
# exit 5 = unknown error

THISHOST=`hostname`
#DEVICE1=/mnt/usb/key1
#DEVICE2=/mnt/usb/key2
SERVER=192.168.15.31
MOUNTPOINT=/mnt/nfs/pi-backup
SOURCE=/home/james/Documents
DESTINATION=$MOUNTPOINT/backup/$THISHOST
LOGFILE=$SOURCE/`basename $0`.log
PID=/tmp/`basename $0`.pid

# echo $PID

echo "Backup script run at " `date`

# check pid file does not exist (normal file test not dir or block)
if [ -f $PID ] ; then 
echo "pid file $PID exists! Previous script run has not completed or completed abnormally."
exit 1
fi

# test if mount exists and mount if not
if ! mount | grep -q $MOUNTPOINT  ; then
echo "Backup not currently mounted!" && echo "$MOUNTPOINT tested" 
	
	# attempt mount	
	if !( mount $MOUNTPOINT ); then
	echo "mount of $MOUNTPOINT failed"
	exit 2
	fi
fi

# check $DESTINATION 
if [ ! -d $DESTINATION ] ; then
	if mkdir $DESTINATION | -ne 0 ; then
	echo "$DESTINATION does not exist and unable to create"
	exit 4
	fi
fi

# create pid file and rsync
if (touch $PID ) ; then
echo "creating pid file $PID. Beginning rsync... "
rsync --archive --no-perms --no-group  --human-readable --itemize-changes --log-file=$LOGFILE $SOURCE $DESTINATION
# flush all disk buffers
sync
rm $PID
echo `date`
exit 0
else
echo "Could not create $PID"
exit 3
fi

echo "Unknown error"
exit 5

