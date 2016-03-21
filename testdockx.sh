#!/bin/bash
cd /home/liveuser
cp /home/Dockerfile .

docker build --rm -t xclock1 -f Dockerfile .
docker run -i --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix xclock1
