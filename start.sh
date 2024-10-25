#!/usr/bin/env bash

export https_proxy=http://127.0.0.1:8889

docker pull 17hao/my-app-gateway:latest

docker stop my-app-gateway

docker rm my-app-gateway

docker rmi $(docker images -f "dangling=true" -q)

# docker network create --driver=bridge --subnet=192.168.100.0/24 nginx
docker run --name my-app-gateway -d --network=nginx -p 80:80 -p 443:443 17hao/my-app-gateway
