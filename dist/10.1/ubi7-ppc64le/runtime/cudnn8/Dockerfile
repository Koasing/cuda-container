ARG IMAGE_NAME
FROM ${IMAGE_NAME}:10.1-runtime-ubi7
LABEL maintainer "NVIDIA CORPORATION <sw-cuda-installer@nvidia.com>"

ENV CUDNN_VERSION 8.0.4.30
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

RUN yum install -y \
    libcudnn8-${CUDNN_VERSION}-1.cuda10.1 \
    && yum clean all \
    && rm -rf /var/cache/yum/*
