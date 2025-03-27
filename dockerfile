pipeline {
    agent any
    environment {
        IMAGE_NAME = "nginx-custom"
        
    }
    stages {
        stage('Build NGINX Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME}:latest ."
                }
            }
        }
    }    
}   