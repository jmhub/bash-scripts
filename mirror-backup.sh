#!/bin/bash
# Backup script
# rsync a drive path to another
# test last run was successful or is still running by checking for a pid file
# create pid file if doesn't exist
# record start time and end time - email this
# test drive is available - what is the exit codes when does not exist?
# eg if [ -f /var/$NAMEOFSCRIPT.pid ] ; then
# pid still there exit 3
# elif
# else report (email?) error on attach/mount or pid still existing

# exit 1 = pid file exists (previous mirror still running?)
# exit 2 = devices not mounted
# exit 3 = unable to write pid file
# exit 4 = unknown error
# exit 0 = successful exit

DEVICE1=/mnt/usb/key1
DEVICE2=/mnt/usb/key2
# only copy contents of below directory
SOURCE=$DEVICE1/backup/
DESTINATION=$DEVICE2/backup-mirror
LOGFILE=$DEVICE1/`basename $0`.log
PID=/tmp/`basename $0`.pid

echo "---------------------------" > $LOGFILE
echo "run by $USER " >> $LOGFILE
echo `date` >> $LOGFILE

# check pid file does not exist (normal file test not dir or block)
if [ -f $PID ] ; then 
echo "pid file $PID exists! Previous script run has not completed or completed abnormally." >> $LOGFILE
exit 1

# test block device exists (in case of failure or disconnection)
elif ! mount | grep -q $DEVICE1 || ! mount | grep -q $DEVICE2 ; then
echo "backup device not currently mounted!" && echo "$DEVICE and $ DEVICE2 tested"  >> $LOGFILE
exit 2

# create pid file and mirror
else
echo "creating pid file $PID. Beginning rsync mirroring.. " >> $LOGFILE
	if (touch $PID) ; then
	sync
	rsync --recursive --delete --human-readable --log-file=$LOGFILE $SOURCE $DESTINATION
	# flush all disk buffers	
	sync
	rm $PID
	else
	echo "unable to create pid file $PID. Exiting" >> $LOGFILE
	exit 3
	fi
echo `date` >> $LOGFILE

exit 0
fi
exit 4

