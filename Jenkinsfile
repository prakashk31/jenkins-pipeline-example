pipeline {
    agent any
    tools {
        maven "Maven3"
        
    }
    stages {
        stage('Initialize'){
            steps{
                echo "PATH = ${M2_HOME}/bin:${PATH}"
                echo "M2_HOME = /opt/maven"
            }
        }
        stage('Build') {
            steps {
                dir("/var/lib/jenkins/workspace/jenkins1/my-app") {
sh "mvn -Dmaven.test.failure.ignore=true clean package"                }
            }
        }
     
    }
post {
       always {
          junit(
        allowEmptyResults: true,
        testResults: '*/test-reports/.xml'
      )
      }
   } 
}
