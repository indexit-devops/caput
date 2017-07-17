#!/usr/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then 
	echo "You need to be a root user to perform this command"
	exit 
fi

URL="http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz"
TARFILE=$(echo $URL | awk -F / '{print $NF}')

cd /opt
if [ ! -e /opt/$TARFILE ]; then 
	echo "Downloading Tomcat"
	wget $URL
fi
 
echo "Extracting Tomcat"
tar xzf $TARFILE 
