#!/bin/sh

read -p "Give the file :" gl
if [ -d $gl ];
then

	
	for d in `ls $gl`
	do
		if [ -d "$gl/$d" ];
		then 
			find "$gl/$d" -executable -type f | wc -w
		fi
	done
	
	
else 
	echo "Not a directory"
fi



