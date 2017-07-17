#!/usr/bin/bash

FILE=/tmp/abc
if [ -e $FILE ]; then 
	echo "File exists"
else
	echo "File does not exist"
fi
