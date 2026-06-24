pipeline {
    agent any

    stages {
        stage('Cleanup') {
    steps {
        sh 'rm -rf .terraform'
    }
}
        stage('Checkout') {
            steps {
                echo 'Code already checked out by Jenkins'
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Lint') {
    steps {
        echo 'Running lint checks...'
    }
}
       stage('Testbuild ') {
        steps { 
            echo 'this is build stage'
            sh 'ls -la'
            sh 'pwd' 

        }
       }

     stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
    
    }

    post {
        success {
            echo 'ec2 instance created successfully!'
        }
        failure {
            echo 'Pipeline failured'
        }
    }
}
