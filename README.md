# docker-csgo

A docker container for running a Counter Strike: Global Offensive server.

## Prerequisites

1. Install [Docker][]

[Docker]: http://docker.io/

## Running

To run the server with the *dangerous* default settings use:

    docker run -d -p 27015 -p 27015/udp tronpaul/csgo

This will run a csgo server with the default competitive configuration, with
a rcon and server password of `changeme`. To run the server securely run it
with something like:

    docker run -d -p 27015 -p 27105/udp tronpaul/csgo -ip 0.0.0.0 -tickrate 128 -usercon +sv_password mysecurepassword +rcon_password abetterpassword +game_type 0 +game_mod 1

Notice how you'll need to supply every argument besides `-game` and `+map` if you pass your own arguments.
