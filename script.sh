#!/bin/bash
pwd
ls
cd helm
yqq eval ".image.commit = \"${DOCKER_IMAGE}:${commitId}\"" -i values.yaml
echo "${commitId}"


