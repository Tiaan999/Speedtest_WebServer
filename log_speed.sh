#! /bin/bash

if [ -s speedtest_data.log ]
then
	:
else
	touch speedtest_data.log
	speedtest --csv-header >> speedtest_data.log
fi

while true;
do
	echo "Measuring speed..."
	speedtest --csv >> speedtest_data.log
	#time_now="$(date +'%H:%M:%S')"
	#echo "Speed measured at $time_now"
	sleep 60
done
