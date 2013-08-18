#!/bin/bash

# Script renames directories based on patterns
# Requires 2 patterns exactly
# Using a single pattern requires removing the semi-colon UNTIL the double quote on the OUTPUT line
# Consider using sed "s/^\(.\{$NUM\}\).*/\1/" which requires the number of characters to keep from the beginning of the filename ($NUM)

PATTERN1=".HDTV"
PATTERN2=".BDRip"

DIR="$HOME/Movies/films-tv/Girls/Girls - Season 1"
INPUT=`ls "$DIR"`
echo "\nWorking directory: $DIR \n"

for VAR in $INPUT
do
	if [ -d $VAR ] ; then
		#echo "\nOriginal: $VAR"
		OUTPUT=`echo "$VAR" | sed "s/\($PATTERN1\).*//;s/\($PATTERN2\).*//"`
		#echo "Formatted: $VAR"
		#echo "Formatted output: $OUTPUT"
		if [ "$VAR" != "$OUTPUT" ] ; then
			echo "Original input: $VAR"
			echo "Formatted output: $OUTPUT \n"
			# uncomment below to rename directories
			# mv "$VAR" "$OUTPUT"
		fi
	fi

done

