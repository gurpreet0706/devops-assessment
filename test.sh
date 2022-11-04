#!/bin/bash

cd my-app
cd target
pushd .
nohup java -jar my-app-0.0.1-SNAPSHOT.jar > /dev/null 2>&1 &
serverPID=$!
sleep 2m
newman run ../../DevOps-Assessment.postman_collection.json
kill $serverPID


