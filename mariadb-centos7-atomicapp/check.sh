#!/bin/sh
#
# Run this script with provider name as first argument
#

if [ $1 == "kubernetes" ]; then
  IP=$(kubectl get service mariadb -o template --template="{{ .spec.clusterIP }}")
  PORT=$(kubectl get service mariadb -o template --template="{{ (index .spec.ports 0).port }}")
fi

if [ $1 == "docker" ]; then
  IP=localhost
  # TODO: get port from somewhere :-)
  PORT=80
fi

# TODO: get them from answers.conf or as arguments to this script
db_pass="pass"
db_name="name"
db_user="user"

docker run -it centos/mariadb mysqladmin -h $IP -P $PORT -u $db_user -p$db_pass --connect-timeout=10 ping
