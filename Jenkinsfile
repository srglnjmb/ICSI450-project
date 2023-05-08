pipeline {
  agent any
  tools {NodeJS "node"}
    
  stages {
        
    stage('Git') {
      steps {
        git 'https://github.com/srglnjmb/ICSI450-project.git'
      }
    }
     
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm run build'
      }
    }  
    
    stage('Test') {
      steps {
        sh 'npm start'
      }
    }
  }
}
