pipeline {
    agent any
    parameters {
        string(name: 'ENVIRONMENT', defaultValue: 'staging', description: 'Target environment for deployment')
    }
    stages {
        stage('Build') {
            when {
                expression { params.ENVIRONMENT != 'production' && params.ENVIRONMENT == 'staging' }
            }
            steps {
                echo 'Building the application...'
                // Add your build commands here, e.g., sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add your test commands here, e.g., sh 'mvn test'
            }
        }
        stage('Deploy to Production') {
            when {
                expression { env.BRANCH_NAME == 'main' }
            }
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