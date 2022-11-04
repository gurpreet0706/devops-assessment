#!/bin/bash

cd my-app
mvn clean install
cd target
pushd .
nohup java -jar my-app-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
sleep 2m
serverPID=$!
newman run ../../DevOps-Assessment.postman_collection.json
kill $serverPID


