#!/bin/bash

export https_proxy=127.0.0.1:8889
export http_proxy=127.0.0.1:8889

container_name=my-app-gateway

docker pull 17hao/my-app-gateway:latest

docker stop ${container_name}

docker rm ${container_name}

docker rmi $(docker images -f "dangling=true" -q)

docker run --name ${container_name} -d -p 10443:10443 17hao/my-app-gateway