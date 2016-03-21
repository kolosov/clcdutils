#!/bin/sh

sudo /usr/bin/predocker.sh

#RET_VAR=$?
if [ $? -eq 0 ]
then 
  zenity --notification --text "Docker disk was found, starting docker image" --timeout 1
  /usr/bin/testdockx.sh
else
  zenity --notification --text "Docker disk was not found!" --timeout 1
fi

