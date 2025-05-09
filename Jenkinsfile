pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'No build step required for static HTML project.'
            }
        }

        stage('Test') {
            steps {
                echo 'No automated tests defined for static HTML project.'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.build('html-calculator-app')
                    echo 'Deploying the HTML calculator application...'
                }
            }
        }
    }
}