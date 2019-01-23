#!/usr/bin/env groovy

node {
  cleanWs()
  checkout scm
  stage('release') {
    if (env.BRANCH_NAME == 'master') {
      sh 'make release'
    }
  }
}