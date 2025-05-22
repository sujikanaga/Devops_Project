pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sujikanaga/Devops_Project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('html-calculator-app')
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Stop old container if exists
                    sh 'docker rm -f calc-container || true'

                    // Run new container on port 9040
                    sh 'docker run -d -p 9040:80 --name calc-container html-calculator-app'

                    echo 'Application deployed at http://localhost:9040'
                }
            }
        }
    }
}