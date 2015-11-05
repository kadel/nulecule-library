#!/bin/sh
#!/bin/sh
#
# Run this script with provider name as first argument
#

if [ $1 == "kubernets" ]; then
  IP=$(kubectl get service guestbook -o template --template="{{ .spec.clusterIP }}")
  PORT=$(kubectl get service guestbook -o template --template="{{ (index .spec.ports 0).port }}")
fi

curl --max-time 1 $IP:$PORT/info
