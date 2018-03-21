#!/bin/bash
TAG="$1"

if [ "${TAG}" = "" ]
then
    echo "Please set TAG"
    exit 1
fi
docker build -t makotow/sphinx-docker:${TAG} .