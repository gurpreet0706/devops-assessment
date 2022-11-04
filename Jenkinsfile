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
            emailext body: 'A Test EMail', recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']], subject: 'Test'
        }
   

}
}
