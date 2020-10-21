#!/usr/bin/env bash

PYTHON_NAME=python3.8-buster
IMAGE_NAME=petnow/cuda
CUDA_VERSION=10.2
CUDNN_VERSION=cudnn7

docker build -t ${IMAGE_NAME}:${CUDA_VERSION}-base-${PYTHON_NAME} ./base

docker build -t ${IMAGE_NAME}:${CUDA_VERSION}-runtime-${PYTHON_NAME} ./runtime \
    --build-arg IMAGE_NAME=${IMAGE_NAME} \
    --build-arg PYTHON_NAME=${PYTHON_NAME}

docker build -t ${IMAGE_NAME}:${CUDA_VERSION}-${CUDNN_VERSION}-runtime-${PYTHON_NAME} ./runtime/${CUDNN_VERSION} \
    --build-arg IMAGE_NAME=${IMAGE_NAME} \
    --build-arg PYTHON_NAME=${PYTHON_NAME}
