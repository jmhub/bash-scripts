#!/bin/bash

# test for host online

SERVER=192.168.15.31

# count 2, exit after single successful rep, wait time of 1 sec
if ( ping -c2 -o -W 1000 $SERVER >/dev/null ) ; then
echo "$SERVER up"
else
echo "$SERVER down"
fi