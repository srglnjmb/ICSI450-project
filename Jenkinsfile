pipeline {
    agent any
    
    stages {
        stage('Clone repository') {
            steps {
                git branch: 'master', url: 'https://github.com/your-git-repo.git'
            }
        }
    }
}
