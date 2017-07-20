#!/usr/bin/bash

# READ ME

## EXIT STATUS
### 0. SUCCESS
### 1. NON ROOT USER

USERID=$(id -u)
if [ $USERID -ne 0 ] ; then 
	echo "You need to be a root user to perform this command"
	exit 1 
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
