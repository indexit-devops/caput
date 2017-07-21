#!/bin/bash

### Vriables
MOD_JK_URL='wget http://redrockdigimark.com/apachemirror/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.42-src.tar.gz'
MOD_JK_TAR=$(echo $MOD_JK_URL | awk -F / '{print $NF}')
MOD_JK_LOC=$(echo $MOD_JK_TAR| sed -e 's/.tar.gz//')
###
yum install httpd httpd-devel gcc -y &>/dev/null
if [ $? -ne 0 ]; then 
	echo "Installation Failed"
	exit 1
fi

### Start Services
systemctl enable httpd &>/devnull
systemctl start httpd &>/dev/null
if [ $? -ne 0 ]; then 
	echo "HTTPD Startup Failed"
	exit 2
fi

### MOD_JK Install
cd /opt
if [ ! -e /opt/$MOD_JK_TAR ]; then 
	wget $MOD_JK_URL &>/dev/null
fi
tar xf $MOD_JK_TAR
cd /opt/$MOD_JK_LOC/native
./configure --with-apxs=/bin/apxs &>/tmp/webserver.log
if [ $? -ne 0 ]; then 
	echo "MOD_JK ./configure failed"
	exit 3
fi

make clean &>/dev/null
make *>/dev/null
make install &>/dev/null

### MOD_JK Configuration












