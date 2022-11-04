#!/bin/bash
echo artifacts building
pwd
ls
chmod -R 777 ./Dockerfile
echo "Building Docker image"
docker build -t assignment/springapp:$BUILD_NUMBER .
echo " Login Dockerhub"
echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
docker push assignment/springapp:$BUILD_NUMBER
docker logout
