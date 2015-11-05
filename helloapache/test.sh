#!/bin/sh

IMGNAME="helloapache"

docker build -t $IMGNAME helloapache/
mkdir /tmp/helloapache
cd /tmp/helloapache
atomic run $IMGNAME --provider=docker

docker ps
ls 

curl localhost:80

atomic stop $IMGNAME --provider=docker
