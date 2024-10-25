#!/usr/bin/env bash

export https_proxy=http://127.0.0.1:8889

docker stop my-app-gateway

docker rm my-app-gateway

docker build --network=host -t 17hao/my-app-gateway .

docker rmi $(docker images -qa -f 'dangling=true')
