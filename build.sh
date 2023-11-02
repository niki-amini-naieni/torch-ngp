#!/bin/bash

echo 'Building Dockerfile with image name torch_ngp'
UID=`id -u`
docker build --build-arg UID=${UID} -t torch_ngp .
