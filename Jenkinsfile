pipeline {
  agent any
 
  stages {
    stage('Build') {
      steps {
        sh 'gradlew clean install'
      }
    }
    stage('Unit Test') {
      steps {
        sh 'gradlew clean test'
      }
    }
   
  }
}
