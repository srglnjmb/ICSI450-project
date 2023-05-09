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
              sh 'sudo docker build -t nextjs-app:latest .'
            }
        }
    }
}
