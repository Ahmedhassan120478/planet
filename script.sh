#!/bin/bash
pwd
ls
cd helm
yqq eval '.img = "new-image-name:latest"' -i values.yaml
echo "${commitId}"


