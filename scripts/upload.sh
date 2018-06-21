#!/bin/sh

FILE=`date +%Y-%m-%d_%H.%M.mov`

/system/sdcard/bin/avconv -rtsp_transport tcp -y -i rtsp://0.0.0.0:8554/unicast -vcodec copy -c:a aac -strict experimental -t 10 /system/sdcard/DCIM/VideoRecorder/$FILE

