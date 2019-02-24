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
	speedtest --csv >> speedtest_data.log
	sleep 60
done
