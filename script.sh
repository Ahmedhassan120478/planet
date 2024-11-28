#!/bin/bash
pwd
ls
yqq eval '.img = "new-image-name:latest"' -i values.yaml
echo "${commitId}"
