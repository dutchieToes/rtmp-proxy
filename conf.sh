#!/bin/sh

if [ ! $SUBNET == "" ]; then sed -i "s|#SUBNET|allow publish $SUBNET;|g" /usr/local/nginx/conf/nginx.conf; fi
if [ ! $RTMP_HOST == "" ] && [ ! $RTMP_KEY == "" ]; then sed -i "s|#RTMP_KEY|push $RTMP_HOST/$RTMP_KEY;|g" /usr/local/nginx/conf/nginx.conf; fi

ln -s /dev/stdout /usr/local/nginx/logs/access.log
ln -s /dev/stdout /usr/local/nginx/logs/error.log

exit 0
