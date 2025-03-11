pipeline {
  agent any
 
  stages {
    stage('Build') {
      steps {
         sh './gradlew clean build'
      }
    }
    stage('Unit Test') {
      steps {
         sh './gradlew test'
      }
    }
   
  }
}
