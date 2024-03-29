ARG DOCKER_REGISTRY=docker.io
ARG FROM_IMG_REPO=qspack
ARG FROM_IMG_NAME="centos-base"
ARG FROM_IMG_TAG="0.12.1_2019-04-17.1"
ARG FROM_IMG_HASH=""
FROM ${DOCKER_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN spack graph hwloc \
 && spack install hwloc
