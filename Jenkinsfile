pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS = credentials('docker-credentials')
        dockerimage = 'java-webapp'
    }
    stages {
      stage ('Build ') {
            steps {
                echo 'building ...'
                sh 'docker build -t java-weapp .'
            }
            
        }
        stage ('Run') {
            steps {
                echo 'running ...'
                sh 'docker run -d -p 9090:8080 java-webapp'
            }
        }
    }
}
