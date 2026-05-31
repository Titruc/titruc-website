#!/bin/bash
#execute to setup docker and webserver on port 14577


cd /opt/website/titruc

rm -rf titruc-website

git clone https://github.com/Titruc/titruc-website/

cd titruc-website

docker rm -f $(docker ps -q --filter publish=14577) || true

docker build -t webserver-titruc .

docker run -d -p 14577:80 webserver-titruc