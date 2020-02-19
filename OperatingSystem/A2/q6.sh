#!/bin/sh

read -p "Give the file :" gl
if [ -d $gl ];
then
	ls $gl
	
	for d in `ls $gl`
	do
		if [ -d "$gl/$d" ];
		then 
			ls "$gl/$d" | wc -l
		fi
	done
	
	
else 
	echo "Not a directory"
fi

