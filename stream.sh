#!/bin/bash

export DISPLAY=:99

STREAM_KEY="ef6d74868f69db63a3c11a33a8f899d8f?s=54d20ca45fba421a"

ffmpeg \
-f x11grab \
-video_size 1280x720 \
-framerate 30 \
-i :99 \
-c:v libx264 \
-preset veryfast \
-pix_fmt yuv420p \
-f flv \
rtmp://rtmp.cdn.asset.aparat.com:443/event$STREAM_KEY
