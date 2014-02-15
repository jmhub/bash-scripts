#!/bin/bash

# Script renames directories based on number of characters to keep - ignores files
# Requires directory to work in $DIR

# Input number of characters to keep
NUM=12

DIR="/Users/james/Downloads/missy-elliot/Missy Elliot  - Respect M.E. (2006) - Hip Hop [www.torrentazos.com]"
INPUT=`ls "$DIR"`
echo "\nWorking directory: $DIR \n"
OUTPUTDIR=$DIR/sed-output

ORIGIFS=$IFS
IFS=$'\n'

for VAR in $INPUT
do
	if [ ! -d "$VAR" ] ; then
		#echo "\nOriginal: $VAR"
		OUTPUT=`echo "$VAR" | sed 's/_-_www.torrentazos.com//'`
		#echo "Formatted: $VAR"
		#echo "Formatted output: $OUTPUT"
		if [ "$VAR" != "$OUTPUT" ] ; then
			echo "Original input: $VAR"
			echo "Formatted output: $OUTPUT \n"
			# uncomment below to copy files
			#mv "$VAR" "$OUTPUT"
			if [ ! -d $OUTPUTDIR ]; then
				mkdir $OUTPUTDIR
			fi
			cp $DIR/"$VAR" $OUTPUTDIR/"$OUTPUT"
		fi
	fi

done
IFS=$ORIGIFS

