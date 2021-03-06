#!/bin/bash

# retrieves external ip and posts to amusebouche.co.nf
# exit 1 = IP not retreived or service unavailable
# exit 2 = $IPOUT file empty
# exit 3 = other error

DATE=`date`
MYIP=`curl --max-time 20 -s http://ipecho.net/plain`
#MYIP=192.168.15.31
OUT=/home/james/Documents/www.amusebouche.co.nf/ip.html
IPOUT=/home/james/Documents/www.amusebouche.co.nf/ip.txt
LOG=/opt/scripts/logs/`basename $0`.log
echo "####" >> $LOG
echo $DATE >> $LOG
echo "$IPOUT:  $(cat $IPOUT)"  >> $LOG
echo "External IP: $MYIP" >> $LOG
echo $MYIP

if [ -z $MYIP ] || [ ! -z $(grep "service unavailable" $IPOUT) ]; then
echo "External IP not retrieved. exiting." >> $LOG
exit 1 

elif [ ! -z $MYIP ]; then
echo "IP $MYIP received." >> $LOG
# echo $MYIP > $IPOUT
	# uses single = sign for comparing strings - if $IPOUT is empty this may cause an error
	if [ $MYIP = $(cat $IPOUT) ]; then
		echo "$MYIP and $IPOUT identical" >> $LOG
		exit 2
	fi
else
	echo $MYIP > $IPOUT

	echo "$MYIP" > $IPOUT
	echo "<html>" > $OUT
	echo "<body>" >> $OUT
	echo "$DATE <br>" >> $OUT
	echo "$MYIP" >> $OUT
	echo "</body>" >> $OUT
	echo "</html>" >> $OUT

lftp -e "set ssl:verify-certificate no; put $OUT; bye" -u 1574758_amusebouche,1nosebag1 www.amusebouche.co.nf
exit 0
fi

exit 3
