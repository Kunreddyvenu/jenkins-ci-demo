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

        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'echo "Build started at $(date)"'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'echo "Running test suite..."'
            }
        }
       stage('code changes') {
            steps {
                echo 'checking webhook...'
                sh 'echo "webhook is running..."'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh 'echo "Deployment complete"'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
