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
            sh 'sudo docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
          }
          sh 'sudo docker build -t icsi450-project:latest .'
        }
      }
      stage('Deploy image') {
        steps {
          script {
            def containerExists = sh(script: 'docker ps -a | grep your-container-name-or-id', returnStatus: true) == 0
            if (containerExists) {
              sh 'sudo docker stop icsi450-project-service'
              sh 'sudo docker rm icsi450-project-service'
            }
          }
          sh 'sudo docker run -p 3000:3000 -d --name icsi450-project-service icsi450-project:latest'
        }
      }
    }
}
