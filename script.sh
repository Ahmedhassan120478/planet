#!/bin/bash
pwd
ls
cd helm
yqq eval '.img = "${DOCKER_IMAGE}:${commitId"' -i values.yaml
echo "${commitId}"


