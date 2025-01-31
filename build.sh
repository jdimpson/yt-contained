#!/bin/sh

IMAGE='jdimpson/yt-contained';

if docker images | grep -q "$IMAGE"; then
	docker image rm "$IMAGE";
fi

docker build . -t "$IMAGE"
echo docker image push $IMAGE
