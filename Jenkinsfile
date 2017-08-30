#!/usr/bin/env groovy
@Library('smartcosmos@v1.0.0') _

def repository = "smartcosmos/node-build-env"

node {

    def image

    try {
      checkout scm
      def commitID = sh(returnStdout: true, script: "git rev-parse HEAD")
      def tag = commitID.trim().take(6)

      stage ('Build'){
        image = docker.build "${repository}:${tag}"
      }

      if (env.BRANCH_NAME == 'master') {
        stage ('Publish') {

          docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials') {
            image.push()
            image.push('latest')
          }
        }
      }
    }
    finally {
      // remove image to save space
      sh "docker rmi ${image.id}"
    }
}
