#!/bin/bash -e

DOCKER_BUILDKIT=1 docker build -f end2end.dockerfile .
