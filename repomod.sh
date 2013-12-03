#!/bin/bash

# change contents of directory/file to "Enabled=1"

# directory to work in

WORKING=/etc/yum.repos.d/

echo -e "\n Working directory: $WORKING \n"

for FILE in $WORKING/*.repo; do
	# cp $FILE $FILE.orig
	sed -e "s/enabled = 0/CHANGED/g" $FILE
	done

exit 0
