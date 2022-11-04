pipeline { 
    agent any  
    stages { 
        stage('Build') { 
            steps { 
                 sh "ls -lstr"
                 sh "chmod -R 777 ./build.sh"
                 sh "./build.sh"
                   echo 'This is a minimal pipeline for testing of token.' 
            }
        }
    }
}

