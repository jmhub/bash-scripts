#!/bin/bash
#Script connects to raspberrypi
# IP of host to connect to
INT_IP=192.168.15.31
EXT_IP=58.28.219.162

# user
USER=james

# port
PORT=22231

if (ping -c 2 -w 2 $INT_IP > /dev/null); then
echo "$INT_IP available"
ssh $USER@$INT_IP -p $PORT


elif (nc -w 5 $EXT_IP $PORT > /dev/null); then
echo "$EXT_IP available"
ssh -p $PORT $USER@$EXT_IP
else
echo "no connection to $INT_IP or $EXT_IP"
exit 1
fi
exit 0
