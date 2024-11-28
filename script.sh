#!/bin/bash
pwd
ls
cd helm
yq eval ".image.tag = \"${DOCKER_IMAGE}:${commitId}\"" -i values.yaml
echo "${commitId}"


