#!/bin/bash

# test for host online

INTSERVER=192.168.15.31
EXTSERVER=58.28.219.162
SSHPORT=22231

# count 2, exit after single successful rep, wait time of 1 sec
if ( ping -c2 -o -W 1000 $INTSERVER >>/dev/null ) ; then
echo "$INTSERVER up"
echo "connecting.."
ssh -p $SSHPORT james@$INTSERVER

elif ( nc -w 3 $EXTSERVER $SSHPORT >>/dev/null ) ; then
echo "$INTSERVER not available. Connecting to $EXTSERVER.."
ssh -p $SSHPORT james@$EXTSERVER
else
echo "$INTSERVER and $EXTSERVER not contactable"
fi
