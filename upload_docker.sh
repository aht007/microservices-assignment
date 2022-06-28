#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mohammadahtasham786/microservices:latest

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u="mohammadahtasham786" -p="$DOCKER_PASSWORD"
docker tag ml-microservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
