#!/bin/bash
pwd
ls
cd helm
echo "DOCKER_IMAGE=${DOCKER_IMAGE}"
echo "commitId=${commitId}"
yqq eval ".image.tag = \"${DOCKER_IMAGE}:${commitId}\"" -i values.yaml
echo "${commitId}"


