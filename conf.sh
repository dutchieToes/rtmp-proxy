#!/bin/sh

STREAM_KEY=${STREAM_KEY:=$TWITCH_KEY}
STREAM_KEY=${STREAM_KEY:=$YOUTUBE_KEY}

if [ -z $STREAM_KEY ]; then exit 1; fi

if [ ! $SUBNET == "" ]; then sed -i "s|#SUBNET|allow publish $SUBNET;|g" /usr/local/nginx/conf/nginx.conf; fi
if [ ! $TWITCH_KEY == "" ] && [ ! $TWITCH_RTMP == "" ]; then sed -i "s|#TWITCH_KEY|push $TWITCH_RTMP/$TWITCH_KEY;|g" /usr/local/nginx/conf/nginx.conf; fi
if [ ! $YOUTUBE_KEY == "" ]; then sed -i "s|#YOUTUBE_KEY|push rtmp://a.rtmp.youtube.com/live2/$YOUTUBE_KEY;|g" /usr/local/nginx/conf/nginx.conf; fi

exit $?
