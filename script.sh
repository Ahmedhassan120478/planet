#!/bin/bash
docker rmi "${tagName}" || true
docker rmi "${DOCKER_IMAGE}:latest" || true
pwd
ls
yq eval '.img = "new-image-name:latest"' -i values.yaml
echo "${commitId}"
