#!/bin/bash

TAG="0.0.2"

IMAGE_NAME="mohave/print_client_address_ws"

docker buildx create --use --name=qemu
docker buildx inspect --bootstrap
docker buildx build --platform linux/amd64,linux/arm64 --push -t "${IMAGE_NAME}:${TAG}" -f Dockerfile .

