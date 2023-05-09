pipeline {
  agent any
  environment {
    GIT_HOME = tool 'GIT'
  }
  stages {
        
    stage('Git repository') {
      steps {
        git 'https://github.com/srglnjmb/ICSI450-project.git'
      }
    }
     
  //  stage('Build') {
  //     steps {
  //       sh 'docker build -t nextapp .'
  //     }
  //   }
  }
}
