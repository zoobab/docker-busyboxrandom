#!/bin/bash

set -e

NR="20"
DOCKER_REGISTRY_URL_NOHTTPS="registry-k8s1-test9-peng.metroscales.io"
REGISTRY=$DOCKER_REGISTRY_URL_NOHTTPS

for i in `seq $NR`; do
    echo "==== Pushing busyboxrandom:$i ===="
    docker push $REGISTRY/busyboxrandom:$i
done
