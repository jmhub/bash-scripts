#!/bin/bash

# Script renames directories based on number of characters to keep - ignores files
# Requires directory to work in $DIR

# Input number of characters to keep
NUM=12

DIR="$HOME/Movies/films-tv/Deadwood/Deadwood - Season 1"
INPUT=`ls "$DIR"`
echo "\nWorking directory: $DIR \n"

for VAR in $INPUT
do
	if [ ! -d "$VAR" ] ; then
		#echo "\nOriginal: $VAR"
		OUTPUT="echo "$VAR | sed "s/^\(.\{$NUM\}\).*/\1/"
		#echo "Formatted: $VAR"
		#echo "Formatted output: $OUTPUT"
		if [ "$VAR" != "$OUTPUT" ] ; then
			echo "Original input: $VAR"
			echo "Formatted output: $OUTPUT \n"
			# uncomment below to rename directories
			#mv "$VAR" "$OUTPUT"
		fi
	fi

done

