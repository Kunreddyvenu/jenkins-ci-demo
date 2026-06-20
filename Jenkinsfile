pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Code already checked out by Jenkins'
                sh 'pwd'
                sh 'ls -la'
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
