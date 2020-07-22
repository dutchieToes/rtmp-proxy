## General info
This is a simple docker setup for [nginx-rtmp-module](https://github.com/sergey-dryabzhinsky/nginx-rtmp-module)

The only file you actually need once you installed __docker__ and __docker-compose__, is _docker-compose.yml_

You are welcome to use the rest as a guide to build your own solution if you prefer.

## Basic Setup Instructions
* Install latest [Docker](https://docs.docker.com/engine/install/)
* Install latest [Docker Compose](https://docs.docker.com/compose/install/)
* Check https://stream.twitch.tv/ingests/ for your preferred server
* Update _docker-compose.yml_ file with your settings
  * TWITCH_RTMP=twitch_rtmp_url
  * TWITCH_KEY=twitch_stream_key
* Run: _docker-compose up -d_

That's it, now just set your streaming software to stream to:
* rtmp://YOUR_IP:1935/live/stream

And remember to set the ip address (replace YOUR_IP), to that of the pc running this rtmp proxy
