#!/bin/bash

FILE=/home/james/Documents/www.amusebouche.co.nf/ip.txt
IN=$(cat $FILE)
echo "output of ip.txt $IN"
# test empty variable
if [ -z $IN ] ; then
echo "empty var"

else 
echo "NOT an empty var"
fi;
