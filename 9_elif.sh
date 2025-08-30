#!/bin/bash
#VALUE=$(ip a | grep -vi loopback | grep -ic mtu)
VALUE=$(ip a | grep -ic inet)

if [ $VALUE -eq 1 ]
then
	echo "1 active Network Interfae found"

elif [ $VALUE -gt 1 ]
then
	echo "Multiple network Adapter"

else
	echo "No active interface found"
fi

