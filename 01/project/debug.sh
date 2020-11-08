#!/bin/bash

docker rm -f ops-gateway
docker run -it -p 80:80 --name ops-gateway \
-v `pwd`:/app \
-v `pwd`/custom/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf \
-v `pwd`/custom/play.conf:/etc/nginx/conf.d/default.conf -v `pwd`:/app openresty/openresty:1.15.8.3-2-centos /bin/bash