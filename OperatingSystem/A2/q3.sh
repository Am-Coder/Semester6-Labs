#!/bin/bash
read -p "Give the file" path
grep -cvP '\S' $path
