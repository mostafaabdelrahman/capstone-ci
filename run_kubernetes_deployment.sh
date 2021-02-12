#!/usr/bin/env bash

# Create deployment
kubectl apply -f capstone-deployment.yaml

# List kubernetes pods
kubectl get pods

# Expose service
kubectl expose deployment/capstone-deployment--port 8080 --target-port 80
