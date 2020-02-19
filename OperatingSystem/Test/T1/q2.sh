#!/bin/sh

ls -ls | sort -k 6 | awk '{if ($6 > 200) print $10}' 
