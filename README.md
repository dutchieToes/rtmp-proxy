# RTMP-Proxy v1.4.0
## General info
This is a simple docker solution based on [nginx-rtmp-module](https://github.com/sergey-dryabzhinsky/nginx-rtmp-module)

The only file you actually need once you installed __docker__ and __docker-compose__, is _docker-compose.yml_

You are welcome to use the rest as a guide to build your own solution if you prefer.

## Basic Setup Instructions
* Install latest [Docker](https://docs.docker.com/engine/install/)
* Install latest [Docker Compose](https://docs.docker.com/compose/install/)
* Check https://stream.twitch.tv/ingests/ for your preferred server
* Download [docker-compose.yml](https://raw.githubusercontent.com/dutchieToes/rtmp-proxy/master/docker-compose.yml)
* Update __docker-compose.yml__ file with your settings
  * RTMP_HOST=twitch_rtmp_url
  * RTMP_KEY=twitch_stream_key
* In the same directory you saved docker-compose.yml, run: 
  * _docker-compose up -d_

That's it, now just set your streaming software to stream to:
* rtmp://YOUR_IP:1935/live/stream

And remember to set the ip address (replace YOUR_IP), to that of the pc running this rtmp proxy
