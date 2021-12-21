pipeline {
    agent any
    environment { 
		SONARQUBE_URL = "http://192.168.1.85"
                SONARQUBE_PORT =  "9000"
                SONARQUBE_LOGIN =  "16828b496c2427d9886f1a961c7c755f2efb2806"
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
