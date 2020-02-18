#!/bin/bash

read -p "Give the number" nu
read -p "Give the word" wo
echo $nu
for(( i=$nu; i>=1; i-- ))
do
	echo $wo
done

