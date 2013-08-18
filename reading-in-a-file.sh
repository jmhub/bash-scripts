#!/bin/bash

# Read in a file and do something to each line

# Filename here
FILE="$HOME/Movies/films-tv/contents.txt"
COUNT=0;
while read LINE; do
	let COUNT=COUNT+1
	echo "Line $COUNT: $LINE"
done < $FILE
