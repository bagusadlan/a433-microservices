#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Ddaftar image di lokal
docker images

# Mengubah nama image sesuai dengan format Github Packages
docker tag item-app:v1 docker.pkg.github.com/bagusadlan/a433-microservices/item-app:v1
# Login ke Docker Hub
echo $GITHUB_PACKAGES_TOKEN | docker login docker.pkg.github.com -u bagusadlan --password-stdin

# Mengunggah image ke Github Packages
docker push docker.pkg.github.com/bagusadlan/a433-microservices/item-app:v1