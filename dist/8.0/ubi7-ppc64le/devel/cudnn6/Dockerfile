ARG IMAGE_NAME
FROM ${IMAGE_NAME}:8.0-devel-ubi7
LABEL maintainer "NVIDIA CORPORATION <sw-cuda-installer@nvidia.com>"

ENV CUDNN_VERSION 6.0.21
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=bb32b7eb8bd1edfd63b39fb8239bba2e9b4d0b3b262043a5c6b41fa1ea1c1472 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/cudnn-8.0-linux-ppc64le-v6.0.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-8.0-linux-ppc64le-v6.0.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-8.0-linux-ppc64le-v6.0.tgz -C /usr/local && \
    rm cudnn-8.0-linux-ppc64le-v6.0.tgz && \
    ldconfig
