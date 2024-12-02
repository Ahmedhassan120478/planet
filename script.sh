#!/bin/bash
pwd
ls
cd helm || { echo "Helm directory not found"; exit 1; }
echo "DOCKER_IMAGE=${DOCKER_IMAGE}"
echo "commitId=${commitId}"
# Update the image tag and repository in values.yaml using yq
yqq eval ".image.repository = \"${DOCKER_IMAGE}\" | .image.tag = \"${commitId}-abc\"" -i values.yaml || { echo "Failed to update values.yaml"; exit 1; }
echo "Updated values.yaml:"
cat values.yaml
# Run Helm upgrade with error handling
helm upgrade nginx ./ --namespace hassan --install || { echo "Helm upgrade failed"; exit 1; }
echo "Helm upgrade completed successfully!"





