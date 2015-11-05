#!/bin/sh

IMGNAME="helloapache"

docker build -t $IMGNAME helloapache/
atomic run $IMGNAME --provider=docker

curl localhost:80

atomic stop $IMGNAME --provider=docker
