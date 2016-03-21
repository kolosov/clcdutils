#!/bin/sh

echo "Start sudo predocker" >> /tmp/log1
sudo /usr/bin/predocker.sh >> /tmp/pre.log 2>&1

#RET_VAR=$?
if [ $? -eq 0 ]
then 
  zenity --notification --text "Docker disk was found, starting docker image" --timeout 1
  /usr/bin/testdockx.sh
else
  zenity --notification --text "Docker disk was not found!" --timeout 1
fi

