#!/bin/bash

ACTION=stop

if [ $ACTION = start ]; then 
	echo "Action Started"
elif [ $ACTION = restart ]; then 
	echo "Action Restarted"
elif [ $ACTION = stop ]; then 
	echo "Action Stopped"
fi
