#!/bin/bash
echo artifacts building
pwd
ls
chmod -R 777 ./Dockerfile
echo "Building Docker image"
docker build -t gurpreet0706/springapp:$BUILD_NUMBER .
echo " Login Dockerhub"
echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
docker push gurpreet0706/springapp:$BUILD_NUMBER
docker logout




#emailext (
#     subject: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
#     body: """<p>SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
#       <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>""",
#     recipientProviders: [[$class: 'DevelopersRecipientProvider']]
#   )
