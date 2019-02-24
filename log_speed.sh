#! /bin/bash

while true;
do
	speedtest --csv >> speedtest_data.log
	sleep 60
done
