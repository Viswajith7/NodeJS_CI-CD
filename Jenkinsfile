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

          stage("Build imgae"){
            steps{
                sh 'docker build -t my-node-app:1.0 .'
            }
        }
        
         stage('Docker push'){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker_cred',passwordVariable: 'X5sjabwhaf',usernameVariable: 'viswajith790')]){
                    sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
                    sh 'docker tag my-node-app:1.0 viswajith790/cicd'
                    sh 'docker push viswajith790/cicd'
                    sh 'docker logout'
                }
            }
        }

        
    }
}
