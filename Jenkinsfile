
pipeline {
    agent { 
        docker { image 'alpine:latest' }
    }
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
        timestamps()
    }
    stages {
        stage('Requirements') {
            steps {
                echo 'Installing requirements...'
            }
        }
        stage('Build') {
            steps {
                // the algorithm script creates a file named report.txt
                //sh('./algorithm.sh')
                sh('echo "This is a sample report." > report.txt')  
                // this step archives the report
                archiveArtifacts allowEmptyArchive: true,
                    artifacts: '*.txt',
                    fingerprint: true,
                    onlyIfSuccessful: true
            }
        }
    }
}
