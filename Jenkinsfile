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
    }
}
