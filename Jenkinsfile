pipeline {
    agent any

    stages {

        stage('Create Directory') {
            steps {
                sh '''
                    sudo mkdir -p /home/administrator/mydir/nested
                    echo "Directory created."
                '''
            }
        }

        stage('Create File') {
            steps {
                sh '''
                    sudo touch /home/administrator/mydir/nested/NextFile.txt
                    echo "File created."
                '''
            }
        }

        stage('Compile Java File') {
            steps {
                sh '''
                    # assumes your Java file lives inside repo at src/Main.java
                    sudo javac src/Main.java -d /home/administrator/mydir/nested/
                    echo "Java compile done."
                '''
            }
        }

        stage('Run Java Program') {
            steps {
                sh '''
                    cd /home/administrator/mydir/nested/
                    sudo java Main
                    echo "Java executed."
                '''
            }
        }

        stage('Give Permissions') {
            steps {
                sh '''
                    sudo chmod -R 755 /home/administrator/mydir
                    sudo chown -R administrator:administrator /home/administrator/mydir
                    echo "Permissions updated."
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
