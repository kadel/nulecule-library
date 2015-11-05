#!/bin/sh

APPS_TO_TEST="helloapache mariadb-centos7-atomicapp"

for APP in $APPS_TO_TEST; do
  docker build -t $APP $APP
  atomic run $APP --provider=docker

  $APP/check.sh

  atomic stop $APP --provider=docker
done
