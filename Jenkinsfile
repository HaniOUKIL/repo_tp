pipeline {
    agent any
    stages {
        stage( ' Build ' ) {
            steps {
                sh "sudo docker build -t mywebapp . -S"
            }
        }
        stage( ' Run ' ) {
            steps {
                sh "sudo docker run -p 81:8080 mywebapp"
            }
        }         
    }
}
