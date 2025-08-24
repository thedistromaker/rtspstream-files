#!/bin/bash
ffmpeg -f v4l2 -input_format mjpeg -framerate 30 -video_size 640x480 -i /dev/video0 \
       -c:v copy -f rtsp rtsp://0.0.0.0:8554/stream
