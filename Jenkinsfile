pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/azizaloui/mini-projet-devops.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t azizaloui/mini-projet-devops:latest .'
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script {
                    sh 'docker login -u azizaloui -p nihed1003'
                    sh 'docker push azizaloui/mini-projet-devops:latest'
                }
            }
        }
        stage('Deploy Container') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 azizaloui/mini-projet-devops:latest'
                }
            }
        }
    }
}
