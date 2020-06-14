#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=aks1master/testgreenimage

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username aks1master
docker tag testgreenimage aks1master/testgreenimage
# Step 3:
# Push image to a docker repository
docker push aks1master/testgreenimage
