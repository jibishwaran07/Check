pipeline {
    agent any

    stages {

        stage('Create Directory') {
            steps {
                sh '''
                    echo "Creating directory..."
                    sudo mkdir -p /home/administrator/mydirect
                    if [ $? -ne 0 ]; then
                        echo "Directory creation failed!"
                        exit 1
                    fi
                    echo "Directory created successfully!"
                '''
            }
        }

        stage('Create File') {
            steps {
                sh '''
                    echo "Creating file..."
                    sudo touch /home/administrator/mydirect/NextFile.txt
                    if [ $? -ne 0 ]; then
                        echo "File creation failed!"
                        exit 1
                    fi
                    echo "File created successfully!"
                '''
            }
        }

        stage('Change File Permission') {
            steps {
                sh '''
                    echo "Changing file permissions..."
                    sudo chmod 755 /home/administrator/mydirect
                    sudo chmod 644 /home/administrator/mydirect/NextFile.txt
                    if [ $? -ne 0 ]; then
                        echo "Permission change failed!"
                        exit 1
                    fi
                    echo "Permissions applied successfully!"
                '''
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully!"
        }
        failure {
            echo "Pipeline failed!"
        }
    }
}
