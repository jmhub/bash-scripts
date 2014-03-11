#!/bin/bash

# replaces 'enabled=1' OR 'enabled = 1' to 'enabled=0' (disabled) for all files/repos in directory

# exit 1 = unable to create backup directory

WORKINGDIR=/etc/yum.repos.d
BACKUP=$WORKINGDIR/backup

if [ ! -d $BACKUP ] ; then
	#echo "Backup directory not available. Creating.."
	if [ ! `mkdir $BACKUP` ] ; then
	exit 1
	fi
fi 

for FILE in $WORKINGDIR/*.repo; do
	BASE=`basename $FILE`
	echo $FILE
	echo "Basename: $BASE"
	cp  $FILE $BACKUP/$BASE
	sed -i 's/enabled\ =\ 1/enabled=0/g;s/enabled=1/enabled=0/g' $FILE
done
