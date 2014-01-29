#!/bin/bash

FILE=/home/james/Documents/www.amusebouche.co.nf/ip.txt

# test NOT zero size
if [ -s $FILE ] ; then
echo "not zero size"

else 
echo "zero size"
fi;
