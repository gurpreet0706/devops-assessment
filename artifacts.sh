#!/bin/bash
echo artifacts building
pwd
echo "Building Docker image"
docker build -t assignment/springapp:$BUILD_NUMBER .
echo " Lign Dockerhub"
echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
docker push assignment/springapp:$BUILD_NUMBER
docker logout
