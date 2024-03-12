pipeline {
    agent any
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }

        stage("Build image"){
            steps{
                sh 'docker build -t my-node-app:1.0 .'
            }
        }


        stage('Docker push'){
            steps{
                withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                sh 'docker login -u viswajith790 -p ${dockerhubpwd}'
    
        }
                    
                    sh 'docker tag my-node-app:1.0 viswajith790/cicd'
                    sh 'docker push viswajith790/cicd'
                    sh 'docker logout'
                }
            }

        
       
        


        
    }
}


        

    
