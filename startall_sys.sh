#!/bin/sh

#su liveuser -c 'DISPLAY=:0 zenity --notification --text "Starting ntpdate..." --timeout 1'
ntpdate pool.ntp.org &

/usr/bin/predocker.sh

#RET_VAR=$?
if [ $? -eq 0 ]
then 
  su liveuser -c 'DISPLAY=:0 zenity --notification --text "Docker disk was found, starting docker image" --timeout 1'
  su liveuser -c 'DISPLAY=:0 /usr/bin/testdockx.sh'
else
  su liveuser -c 'DISPLAY=:0 zenity --notification --text "Docker disk was not found!" --timeout 1'
fi

