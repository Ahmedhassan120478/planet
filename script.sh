#!/bin/bash
pwd
ls
# Ensure yq is available
if ! command -v yq &> /dev/null; then
    echo "yq is not installed. Exiting."
    exit 1
fi

# Read the new image tag from the argument
NEW_IMAGE_TAG=$1

# Update the Helm values.yaml file
cd helm || exit 1
yqq eval ".img = \"${NEW_IMAGE_TAG}\"" -i values.yaml

# Output the updated values.yaml for verification
echo "Updated values.yaml:"
cat values.yaml
