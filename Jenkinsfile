pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...' 
                echo 'Using credentials securely...'
                // Add your build commands here, e.g., sh 'mvn clean package'
            }
        }
        stage('Deploy to Production') {
            steps {
                script {
                    echo 'Deploying to production environment...'
                    echo 'Using credentials securely...'
                }
            }
        }
    }
    post {
        success {
            echo 'Deployment to production was successful!'
        }
        failure {
            echo 'Deployment failed.'
        }
    }
}