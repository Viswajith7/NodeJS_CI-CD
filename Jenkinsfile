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
        
       
        


        
    }
}


        

    
