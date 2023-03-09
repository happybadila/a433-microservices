#!/bin/bash

# 1. Membuat Docker image dari Dockerfile dengan nama item-app:v1
docker build -t item-app:v1 .

# 2. Melihat daftar image di lokal
docker image ls

# 3. Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 happybadila/item-app:v1

# 4. Login ke Docker Hub
docker login

# 5. Mengunggah image ke Docker Hub
docker push happybadila/item-app:v1
