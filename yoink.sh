#!/bin/bash
FILE=/root/.yoinkrc
 
if [ -f $FILE ];
then
   echo "File $FILE exists"
   # Assuming you've got this configured so kick it off
   python2.7 /opt/yoink/yoink.py
else
   python2.7 /opt/yoink/yoink.py --recreate-yoinkrc
fi

  	#write out current crontab
	crontab -l > mycron
	#echo new cron into cron file
	echo "00 * * * * python /opt/yoink/yoink.py" >> mycron
	#install new cron file
	crontab mycron
	rm mycron
