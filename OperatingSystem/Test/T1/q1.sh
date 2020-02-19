#!/bin/sh

read -p "Give the name :" name
read -p "Give the runs :" runs

echo -n " $name is "

if [ $runs -gt 100 ];
then
	echo "Genius"
elif [ $runs -gt 80 ];
then 
	echo "Sport Star"
elif [ $runs -gt 50 ];
then 
	echo "Champion"
else 
	echo "Sportsman"
fi

