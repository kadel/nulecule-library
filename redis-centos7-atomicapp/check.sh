#!/bin/sh
#
# Run this script with provider name as first argument
# this script require netcat
# yum install netcat
# atp-get install netcat
#

if [ $1 == "kubernetes" ]; then
  IP=$(kubectl get service redis-master -o template --template="{{ .spec.clusterIP }}")
  PORT=$(kubectl get service redis-master -o template --template="{{ (index .spec.ports 0).port }}")
fi

if [ $1 == "docker" ]; then
  IP=localhost
  # TODO: get port from somewhere :-)
  PORT=6379
fi


(printf "PING\r\n"; sleep 0.5) | nc $IP $PORT | grep PONG
