pipeline {
    agent any
    stages {
        stage("Checkout") {
            steps {
                checkout scm
            }
        }
        stage("Test") {
            steps {
                script {
                    // Install npm if not already installed
                    sh 'apt-get update && apt-get install -y npm'
                    // Run npm test
                    sh 'npm test'
                }
            }
        }
        stage("Build") {
            steps {
                // Run npm build
                sh 'npm run build'
            }
        }
    }
}
