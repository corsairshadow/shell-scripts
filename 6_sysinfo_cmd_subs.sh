#!/bin/bash
#
echo "Welcome $USER on $HOSTNAME."
echo "##################################"
FREE_RAM=`free -m | grep Mem | awk '{print $4}'`
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')
#          df -h | grep "/dev/sda1" | awk '{print $4}'

echo "Available Free RAM is $FREE_RAM MB"


echo "##################################"
echo "Current Load Average is $LOAD"

echo "##################################"
echo "Current ROOT partition is $ROOTFREE Mb"
