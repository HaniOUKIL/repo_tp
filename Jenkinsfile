pipeline {
    agent any
    stages {
        stage( ' Build ' ) {
            steps {
                sh "docker build -t mywebapp"
            }
        }
        stage( ' Run ' ) {
            steps {
                sh "docker run -p 81:8080 mywebapp"
            }
        }         
    }
}
