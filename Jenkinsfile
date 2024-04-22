pipeline {
    agent any
    stages {
        stage('Install Python Environment Tools') {
            steps {
                echo "Installing python3-venv.."
                sh '''
                sudo apt-get update
                sudo apt-get install -y python3.11-venv  # adjust python version as necessary
                '''
            }
        }
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
                . venv/bin/activate
                python3 app.py
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                . venv/bin/activate
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
