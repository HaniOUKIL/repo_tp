pipeline {
    agent any
    environment { 
		SONARQUBE_URL = "http://192.168.1.85"
                SONARQUBE_PORT =  "9000"
                SONARQUBE_LOGIN =  "2f2201ce672db686f45ae0fd0c39932ff709534f"
    }
    stages {
        stage('Sonarqube') {
            steps {
		WithSoanQubeEnv (sonarqube) {
                sh 'mvn clean verify sonar:sonar  -Dsonar.login=$SONARQUBE_LOGIN '
		}
            }
        }
    }
}
