#!/bin/bash

IMAGE_NAME=$1

docker pull $IMAGE_NAME
docker stop react-app || true
docker rm react-app || true
docker run -d -p 80:80 --name react-app $IMAGE_NAME
