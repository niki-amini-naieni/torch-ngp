#!/bin/bash

echo 'Building Dockerfile with image name torch_ngp'
UID=`id -u`
#ARCH=`nvidia-smi --query-gpu=compute_cap --format=csv | sed -n '2 p'`
#docker build --build-arg UID=${UID} --build-arg ARCH=${ARCH} -t torch_ngp .
docker build --no-cache --build-arg UID=${UID} -t torch_ngp .
