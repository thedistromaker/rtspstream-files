#!/bin/bash
cvlc v4l2:///dev/video0:chroma=YUY2:width=640:height=480:fps=30 \
     --sout '#transcode{vcodec=YUY2,fps=30}:rtp{sdp=rtsp://0.0.0.0:8554/stream}'
