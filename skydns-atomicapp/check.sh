#!/bin/sh
#
# this scripts require nslookup
# yum install bind-utils
# apt-get install dnsutils
#

IP=$(kubectl get service kube-dns -o template --template="{{ .spec.clusterIP }}")

# TODO: get it from answers.conf or as arguments to this script
dns_domain="cluster.local"

nslookup kubernetes.default.svc.$dns_domain $IP
