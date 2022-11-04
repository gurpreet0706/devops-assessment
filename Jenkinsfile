pipeline { 
    agent any  
    tools {
        maven 'Maven 3.3.9'
        jdk 'java-11'
    }
    stages { 
        stage('Build') { 
            steps { 
                 sh '''
                  ls -lstr
                 "chmod -R 777 ./build.sh"
                 "./build.sh"
                   echo 'This is a minimal pipeline for testing of token.' 
                 '''
            }
        }
    }
}

