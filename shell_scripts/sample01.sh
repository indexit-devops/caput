#!/usr/bin/bash

echo "Printing Processor Information"
echo "------------------------------"
cat /proc/cpuinfo |grep processor
echo "Printing Memory Information"
echo "------------------------------"
cat /proc/meminfo |grep MemTotal 
echo "Printing Disk Information"
echo "------------------------------"
sudo fdisk -l
