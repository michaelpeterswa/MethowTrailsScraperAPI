#!/bin/bash

echo "starting docker build step..."
docker build -t michaelpeterswa/mtsapi .

docker run -d --name mtsapi -p 6971:6971 --restart always michaelpeterswa/mtsapi
echo "running michaelpeterswa/lkapi docker image on port 6971"
echo "check \"docker logs asapi\" for more info" 