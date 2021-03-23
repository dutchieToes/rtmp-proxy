FROM alpine:latest
RUN apk update
RUN apk add make gcc g++ pcre-dev openssl-dev unzip zlib-dev wget ffmpeg
RUN wget http://nginx.org/download/nginx-1.18.0.tar.gz
RUN wget https://github.com/sergey-dryabzhinsky/nginx-rtmp-module/archive/dev.zip
RUN tar -xvzf nginx-1.18.0.tar.gz
RUN unzip dev.zip
RUN cd nginx-1.18.0/ && ./configure --with-http_realip_module --with-http_ssl_module --add-module=../nginx-rtmp-module-dev && make && make install
COPY conf.sh /conf.sh
COPY nginx.conf /usr/local/nginx/conf/nginx.conf
EXPOSE 1935
CMD sh /conf.sh && /usr/local/nginx/sbin/nginx -t && /usr/local/nginx/sbin/nginx -g 'daemon off;'
