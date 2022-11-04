pipeline { 
    agent any  
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
}

