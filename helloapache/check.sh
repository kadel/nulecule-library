#!/bin/sh
#
# Run this script with provider name as first argument
#

if [ $1 == "kubernetes" ]; then
  IP=$(kubectl get pod helloapache -o template --template="{{ .status.podIP }}")
  PORT=$(kubectl get pod helloapache -o template --template="{{ (index (index .spec.containers 0).ports 0).containerPort }}")
fi

if [ $1 == "docker" ]; then
  IP=localhost
  # TODO: get port from somewhere :-)
  PORT=80
fi

curl --max-time 1 $IP:$PORT
