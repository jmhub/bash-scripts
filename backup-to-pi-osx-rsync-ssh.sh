#!/bin/bash
# Backup script rsync path(s) to a mountpoint

# OS X Version (changed mount process - no stab)
# Changed rsync procedure to use ssh 
# no nfs mount
# test with ping that remote server is online

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
# exit 2 = remote server is not online (according to ping)
# exit 3 = unable to create pid
# exit 4 = $SOURCE does not exist - check local file system
# exit 5 = unknown error

THISHOST=`hostname`
#DEVICE1=/mnt/usb/key1
#DEVICE2=/mnt/usb/key2
SERVER=192.168.15.31
REMOTEMOUNT=$SERVER:/mnt/usb/key1
MOUNTPOINT=/Volumes/pi-backup
SOURCE=/Users/james/Documents
DESTINATION=$REMOTEMOUNT/backup/$THISHOST
LOGFILE=$SOURCE/`basename $0`.log
PID=/tmp/`basename $0`.pid
EXCLUDE=$SOURCE/documents-rsync-exclude.txt
CONNECTSTRING=""

# echo $PID

echo "Backup script run at " `date`

# check pid file does not exist (normal file test not dir or block)
if [ -f $PID ] ; then 
echo "pid file $PID exists! Previous script run has not completed or completed abnormally."
exit 1
fi

# check $SOURCE
if [ ! -d $SOURCE ] ; then
	exit 4
fi


# create pid file and rsync
if (touch $PID ) ; then
echo "creating pid file $PID. Beginning rsync... "
echo "Could not create $PID"
exit 3
fi

if (ping -c 2 -W 1000 $SERVER) ; then
# flush all disk buffers
sync
# --modify-window=1 option allows for a variance of ±1s on the timestamps, which makes the file comparison far more reliable.
# could also compare with -- checksum or --size-only. Use --archive if you want permissions and links. --whole-file = no delta. stops network traffick
rsync --whole-file --archive --no-perms --no-group --human-readable --itemize-changes --modify-window=1 --exclude-from $EXCLUDE --log-file=$LOGFILE --rsh="ssh -p 22231 -l james" $SOURCE $DESTINATION

# flush all disk buffers
sync
rm $PID
echo `date`
exit 0
else
echo "$SERVER offline"
exit 2

echo "Unknown error"
exit 5

