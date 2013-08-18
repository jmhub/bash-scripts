#!/bin/bash

# test if for can read in a directory of files

DIR="/Users/james/Movies/films-tv/Deadwood/Deadwood - Season 2"
#echo `ls "$DIR"`

# sort out Internal File Separator
SAVEIFS=$IFS
IFS=$'\n' 


for FILE in $(find "$DIR" -mindepth 2 -maxdepth 2 -type f -not -iname *.avi)
do
echo $FILE
mv $FILE $FILE.TEST
done

IFS=$SAVEIFS