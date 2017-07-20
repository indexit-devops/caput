#!/bin/bash

ACTION=restart

case $ACTION in
	start) echo "Action Started" ;;
	stop)  echo "Action Stopped" ;;
	restart) echo "Action Restart" ;;
esac
