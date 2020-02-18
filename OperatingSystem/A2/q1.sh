#!/bin/bash
time1=$(date +"%H")
echo $time1
if [ $time1 -gt 12 ];
then
	echo "Evening"
else
	echo "Morning"
fi
