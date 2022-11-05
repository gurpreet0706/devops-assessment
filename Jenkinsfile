pipeline { 
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub_cred')
    } 
    tools {
        maven 'Maven 3.3.9'
        jdk 'java-11'
        nodejs "node"    
    }
    stages { 
        stage('Building') { 
            steps { 
                 sh '''
                 chmod -R 777 ./build.sh
                 ./build.sh
                 '''
            }
        }
         stage('Testing') {
          steps {
                 sh '''
                 chmod -R 777 ./test.sh
                 ./test.sh
                 '''
            }
        }
        stage('Artifacts') {
          steps {
                 sh '''
                 chmod -R 777 ./artifacts.sh
                 ./artifacts.sh
                 '''
            }
         }
 }

post {
        always {
            emailext (
     subject: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
     body: """<p>SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
       <p>Check console output at &QUOT;<a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>&QUOT;</p>""",
     recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']]
   )



   
}
}
}
