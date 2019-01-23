#!/usr/bin/env groovy

node {
  cleanWs()
  checkout scm
  stage('release') {
    if (env.BRANCH_NAME == 'master') {
      steps {
        sh 'make release'
      }
    }
  }
}