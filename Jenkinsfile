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
            when {
                expression { env.BRANCH_NAME == 'main' }
                expression { env.DEPLOY_ENV == 'production' }
            } else {
                echo 'Skipping deployment: Not on main branch or not in production environment.'
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