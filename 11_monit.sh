#!/bin/bash

#ls /var/run/httpd/httpd.pid &>/dev/null
#ls /var/run/httpd/httpd.pid 2>>/dev/null

if [ -f /var/run/httpd/httpd.pid ] # checks whether the file exists
then
  echo "################################################"
  PROCID=$(cat /var/run/httpd/httpd.pid)
  echo "httpd process is running with ProcessID:$PROCID"
  echo "################################################"
else
  echo "################################################"
  echo "httpd is NOT running, Starting process"
  systemctl start httpd
  echo "Started process  using systemctl"
	
  if [ $? -eq 0 ]
  then
    PROCID=$(cat /var/run/httpd/httpd.pid)
    echo "httpd process is running with ProcessID:$PROCID"
    echo "################################################"
  else
    echo "Unable to start Process, Please Debug"
    echo "################################################"
  fi
fi
