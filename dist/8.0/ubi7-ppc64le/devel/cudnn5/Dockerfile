ARG IMAGE_NAME
FROM ${IMAGE_NAME}:8.0-devel-ubi7
LABEL maintainer "NVIDIA CORPORATION <sw-cuda-installer@nvidia.com>"

ENV CUDNN_VERSION 5.1.10
LABEL com.nvidia.cudnn.version="${CUDNN_VERSION}"

# cuDNN license: https://developer.nvidia.com/cudnn/license_agreement
RUN CUDNN_DOWNLOAD_SUM=663aac0328f821d90ae9c74ee43e90751706546c2ce769ea9c96f92864300af6 && \
    curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v5.1/cudnn-8.0-linux-ppc64le-v5.1.tgz -O && \
    echo "$CUDNN_DOWNLOAD_SUM  cudnn-8.0-linux-ppc64le-v5.1.tgz" | sha256sum -c - && \
    tar --no-same-owner -xzf cudnn-8.0-linux-ppc64le-v5.1.tgz -C /usr/local && \
    rm cudnn-8.0-linux-ppc64le-v5.1.tgz && \
    ldconfig
