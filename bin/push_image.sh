#!/bin/bash -e

PASS=`cat ~/.docker/token`
echo ${PASS:?} | docker login --password-stdin --username mydf
docker push mydf/mydockerfile:1
