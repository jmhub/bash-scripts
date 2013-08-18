#!/bin/bash

# Testing


DIR="$HOME/Movies/films-tv/Deadwood/Deadwood - Season 2"
INPUT=`ls "$DIR"`
echo "\nWorking directory: $DIR \n"

# Save original Internal Field Separator (space)
SAVEIFS=$IFS
# Set IFS to new line with backspace
IFS=$'\n'

NUM=18

for VAR in $INPUT
do
	if [ ! -d "$VAR" ] ; then
		# echo "\nOriginal: $VAR"
		OUTPUT=`echo "$VAR" | sed "s/^\(.\{$NUM\}\).*/\1/"`

		if [ "$VAR" != "$OUTPUT" ] ; then
			echo "Original input: $VAR"
			echo "Formatted output: $OUTPUT \n"
			# uncomment below to rename directories
			#mv "$VAR" "$OUTPUT"
		fi

	fi
done

# Restore original IFS
IFS=$SAVEIFS