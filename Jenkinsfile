import jenkins.model.*
jenkins = Jenkins.instance

pipeline {
    agent any
    environment { 
		SONARQUBE_URL = "http://192.168.1.85"
                SONARQUBE_PORT =  "9000"
                SONARQUBE_LOGIN =  "47671c601b8c4a500d2f264d3fe6ab10d2ae6a0a"
    }
    stages {
        stage('Sonarqube') {
            steps {
		WithSoanQubeEnv (sonarqube) {
                sh 'mvn clean package sonar:sonar  -Dsonar.login=$SONARQUBE_LOGIN '
		}
            }
        }
    }
}
