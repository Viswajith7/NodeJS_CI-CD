pipeline {
    agent any
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }

        stage("Test"){
            steps{
                sh 'echo "12345" | sudo -S apt install npm'
                sh 'npm test'
            }
        }

        stage("Build"){
            steps{
                sh 'npm run build'
            }
        }

         }

          stage("Build image"){
            steps{
                sh 'docker build -t my-node-app:1.0 .'
            }
        }

    }
}
