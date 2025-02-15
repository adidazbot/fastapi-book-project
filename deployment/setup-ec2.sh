#!/bin/bash

# Update system
sudo apt-get update
sudo apt-get upgrade -y

# Install required packages
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    docker.io \
    docker-compose

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Create deployment directory
mkdir -p ~/fastapi-book-project
cd ~/fastapi-book-project

# Add current user to docker group
sudo usermod -aG docker $USER

# Create docker network
docker network create fastapi-network