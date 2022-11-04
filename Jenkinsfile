pipeline { 
    agent any  
    tools {
        maven 'Maven 3.3.9'
        jdk 'java-11'
    }
    stages { 
        stage('Intial') { 
            steps { 
                 sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                  ls -lstr
                 mvn -version       
                 chmod -R 777 ./build.sh
                 ./build.sh
                 echo 'This is a minimal pipeline for testing of token.' 
                 '''
            }
        }
    }
}

