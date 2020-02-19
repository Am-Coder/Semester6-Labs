#!/bin/bash
sz=0
for folder in "$@";
do
        t=$(du -s $folder | cut -f 1)
        sz=$((sz + t))
        echo $(du -s $folder | cut -f 1)
        echo $folder
done
echo $sz

