#!/usr/bin/env bash

docker stop my-app-gateway

docker rm my-app-gateway

docker build --network=host -t 17hao/my-app-gateway .

docker rmi $(docker images -qa -f 'dangling=true')
