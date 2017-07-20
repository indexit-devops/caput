#!/bin/bash

TOMCAT_LOC=/opt/apache-tomcat-9.0.0.M22

START() {
	ps -ef |grep $TOMCAT_LOC | grep -v grep &>/dev/null
        if [ $? -eq 0 ]; then
                echo "Tomcat is already running"
                exit 0
        fi
        $TOMCAT_LOC/bin/startup.sh &>/dev/null
	echo "Tomcat Started Successfully"
}

STOP() {
	ps -ef |grep $TOMCAT_LOC | grep -v grep &>/dev/null        
	if [ $? -ne 0 ]; then
                echo "Tomcat is already stopped"
                exit 0
        fi
        PID=$(ps -ef |grep /opt/apache-tomcat-9.0.0.M22 |grep -v grep | awk '{print $2}')
        kill -9 $PID
	echo "Tomcat stopped successfully"
}
case $1 in 
  start) 
	START
  	;;
  stop) 
	STOP
	;;
  restart) 	
	STOP
	START
	;;
  status)
	ps -ef |grep /opt/apache-tomcat-9.0.0.M22 |grep -v grep &>/dev/null
	if [ $? -eq 0 ]; then 
		echo "Tomcat is Running"
	else
		echo "Tomcat is stopped"
	fi
	;;
  *) 
	echo "Usage: $0 {start|stop|restart|status}"
	echo "Ex: $0 start  --> To Start TOmcat"
	exit 1
	;;
esac

