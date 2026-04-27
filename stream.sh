#!/bin/bash

export DISPLAY=:99

STREAM_KEY="YOUR_STREAM_KEY"

ffmpeg \
-f x11grab \
-video_size 1280x720 \
-framerate 30 \
-i :99 \
-c:v libx264 \
-preset veryfast \
-pix_fmt yuv420p \
-f flv \
rtmp://live.aparat.com/live/$STREAM_KEY
