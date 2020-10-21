#!/bin/bash

cd buildkit

sudo buildctl build  \
    --frontend=dockerfile.v0 --local context=. --local dockerfile=. \
    --opt filename=./frontend/dockerfile/cmd/dockerfile-frontend/Dockerfile \
    --opt platform=linux/amd64 --opt build-arg:CHANNEL=experimental \
    --opt "build-arg:BUILDTAGS=`cat frontend/dockerfile/release/experimental/tags`" \
    --output type=docker,name=mydf/mydockerfile:1 | docker load
