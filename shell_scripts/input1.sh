#!/bin/bash

read -p 'Enter your action:' ACTION

if [ $ACTION = start ]; then 
	echo "Action Started"
elif [ $ACTION = restart ]; then 
	echo "Action Restarted"
elif [ $ACTION = stop ]; then 
	echo "Action Stopped"
else
	echo "Invalid Input"
	exit 1
fi
