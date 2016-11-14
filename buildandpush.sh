#!/bin/bash

set -e

NR="20"
REGISTRY="registry.localhost.com"

for i in `seq $NR`; do
    echo "==== Building busyboxrandom:$i ===="
    docker build --no-cache -t busyboxrandom:$i .
    echo "==== Tagging busyboxrandom:$i ===="
    IMAGEID="`docker images -q busyboxrandom:$i`"
    docker tag $IMAGEID $REGISTRY/busyboxrandom:$i
    echo "==== Pushing busyboxrandom:$i ===="
    docker push $REGISTRY/busyboxrandom:$i
done
