#!/usr/bin/env bash

export https_proxy=http://127.0.0.1:8889

container_name=gateway-my-app-fe

docker pull 17hao/my-app-gateway:latest

docker stop ${container_name}

docker rm ${container_name}

docker rmi $(docker images -f "dangling=true" -q)

# docker network create --driver=bridge --subnet=192.168.100.0/24 nginx
docker run --name ${container_name} -d --network=nginx -p 80:80 17hao/my-app-gateway
