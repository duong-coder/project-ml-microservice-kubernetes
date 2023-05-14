#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=duongnhdocker

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./my_password.txt | docker login --username "$dockerpath" --password-stdin
docker image tag "ml-microservice-kubernetes" "$dockerpath/ml-microservice-kubernetes"

# Step 3:
# Push image to a docker repository
docker image push "$dockerpath/ml-microservice-kubernetes"