pipeline {
  agent any
 
  stages {
    stage('Build') {
      steps {
        sh 'gradle clean install'
      }
    }
    stage('Unit Test') {
      steps {
        sh 'gradle clean test'
      }
    }
   
  }
}
