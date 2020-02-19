#!/bin/sh

ls -ls | sort -k 6 | awk '{if ($6 > 10) print $10}' 
ls -ls | sort -k 6 | awk '{if ($6 > 10) print $10}' | wc -w
