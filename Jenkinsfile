pipeline {
    agent any

    stages {

        stage('Create Directory') {
            steps {
                sh '''
                    echo "Creating directory..."
                    sudo mkdir -p /home/administrator/mydir
                '''
            }
        }

        stage('Create File') {
            steps {
                sh '''
                    echo "Creating file..."
                    sudo touch /home/administrator/mydir/NextFile.txt
                '''
            }
        }

        stage('Execute Java File') {
            steps {
                sh '''
                    echo "Compiling Java..."
                    sudo javac src/Main.java -d /home/administrator/mydir/

                    echo "Running Java..."
                    cd /home/administrator/mydir/
                    sudo java Main
                '''
            }
        }

        stage('Give Permissions') {
            steps {
                sh '''
                    echo "Giving permissions..."
                    sudo chmod -R 755 /home/administrator/mydir
                    sudo chown -R administrator:administrator /home/administrator/mydir
                '''
            }
        }
    }

    post {
        success {
            echo "Pipeline successfully completed!"
        }
    }
}
