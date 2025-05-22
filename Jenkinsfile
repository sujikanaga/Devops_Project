pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sujikanaga/Devops_Project.git'
            }
        }

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