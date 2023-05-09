pipeline {
    agent any
    tools {
        git "GIT"
    }
    stages {
        stage('Clone repository') {
            steps {
              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/srglnjmb/ICSI450-project.git']])
            }
        }
        stage('Build Docker image') {
            steps {
              withCredentials([usernamePassword(credentialsId: 'docker-credentials', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
              }
              sh 'sudo docker build -t icsi450-project:latest .'
              sh 'docker push srglnjmb/icsi450-project:latest'
            }
        }
    }
}
