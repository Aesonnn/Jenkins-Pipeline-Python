pipeline {
    agent any
    stages {
        stage('Setup Python Environment') {
            steps {
                echo "Setting up Python Virtual Environment.."
                sh '''
                python3 -m venv venv
                . venv/bin/activate
                pip install -r requirements.txt
                '''
            }
        }
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                pip install -r requirements.txt
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                python3 app.py
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }
}