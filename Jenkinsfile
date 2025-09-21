pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                // Add your build commands here, e.g., sh 'mvn clean package'
            }
        }
        stage('Deploy to Production') {
            steps {
                script {
                    echo 'Deploying to production environment...'
                    // Add your deployment commands here
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