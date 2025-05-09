pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '📥 Cloning from GitHub repository...'
                git branch: 'main', url: 'https://github.com/sujikanaga/Devops_Project.git'
            }
        }

        stage('Build') {
            steps {
                echo '🔧 No build step required for static HTML project.'
            }
        }

        stage('Test') {
            steps {
                echo '🧪 No automated tests defined for static HTML project.'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo '📁 Listing contents of current directory:'
                    sh 'ls -al'

                    echo '🐳 Building Docker image (BuildKit disabled)...'
                    sh 'DOCKER_BUILDKIT=0 docker build -t html-calculator-app .'

                    echo '✅ Docker image built successfully.'
                }
            }
        }
    }

    post {
        success {
            echo '🎉 Pipeline executed successfully.'
        }
        failure {
            echo '❌ Pipeline failed. Check the logs above.'
        }
    }
}
