pipeline {
    agent any
    environment { 
		SONARQUBE_URL = "http://192.168.1.109"
                SONARQUBE_PORT =  "9000"
                SONARQUBE_LOGIN =  "b6d55d76c96d8b4ef7adffb36ab82740ab09afcb"
    }
    stages {
        stage('Sonarqube') {
            steps {
		WithSoanQubeEnv (Sonarqube) {
                sh 'mvn clean package sonar:sonar  -Dsonar.login=SONARQUBE_LOGIN '
		}
            }
        }
    }
}
