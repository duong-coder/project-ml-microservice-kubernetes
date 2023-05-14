#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=duongnhdocker

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-microservice-kubernetes-minikube --image="$dockerpath/ml-microservice-kubernetes"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/ml-microservice-kubernetes-minikube 8000:80
