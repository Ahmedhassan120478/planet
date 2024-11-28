#!/bin/bash
pwd
ls
yq eval '.img = "new-image-name:latest"' -i values.yaml
echo "${commitId}"
