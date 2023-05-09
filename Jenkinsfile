pipeline {
    agent any
    tools {
        git "GIT"
    }
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'main', url: 'https://github.com/srglnjmb/ICSI450-project.git'
            }
        }
    }
}
