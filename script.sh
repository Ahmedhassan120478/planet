#!/bin/bash
pwd
ls
cd helm
yqq eval ".image.tag = \"${DOCKER_IMAGE}:${commitId}\"" -i values.yaml
echo "${commitId}"


