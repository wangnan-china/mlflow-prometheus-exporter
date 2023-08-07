#!/bin/bash 
set -ex

HARBOR_URL=uat-dasec-k8s.dastc.stee.com:8443
HARBOR_PROEJCT=mlops
HARBOR_USER=mlops
HARBOR_PASSWD=vEsVV7JgSm

DOCKER_NAME=mlflow_exporter
TAG=0.1


DOCKER_FQ_NAME=${HARBOR_URL}/${HARBOR_PROEJCT}/${DOCKER_NAME}:${TAG}

docker build . -t ${DOCKER_FQ_NAME}
docker login ${HARBOR_URL} -u ${HARBOR_USER} -p ${HARBOR_PASSWD}