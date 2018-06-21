#!/bin/sh

video_dir=/system/sdcard/motion/videos
file=$(date +%d-%m-%Y_%H.%M.%S).mov
/system/sdcard/bin/avconv -rtsp_transport tcp -y -i rtsp://127.0.0.1:8554/unicast -vcodec copy -c:a aac -strict experimental -t 20 $video_dir/$file
/system/sdcard/bin/curl --upload-file $video_dir/$file -u USER:PASSWD ftp://192.168.66.36/video/$file

