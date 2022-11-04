#!/bin/bash

cd ./devops-assessment/my-app
mvn clean install
cd target
java -jar my-app-0.0.1-SNAPSHOT.jar
