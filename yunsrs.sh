#!/bin/bash
docker run --restart always -d --name srs-cloud -it -p 2022:2022 -p 1935:1935/tcp -p 1985:1985/tcp \
  -p 8080:8080/tcp -p 8000:8000/udp -p 10080:10080/udp \
  -v $HOME/db:/data ossrs/srs-cloud:platform-1
