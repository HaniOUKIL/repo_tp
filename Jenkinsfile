pipeline {
    agent any
    environment { 
		SONARQUBE_URL = "http://c1a9-88-127-215-92.ngrok.io"
                SONARQUBE_PORT =  "9000"
                SONARQUBE_LOGIN =  "b6d55d76c96d8b4ef7adffb36ab82740ab09afcb"
    }
    stages {
        stage('Sonarqube') {
            steps {
		WithSoanQubeEnv (Sonarqube) {
                sh 'mvn clean package sonar:sonar  -Dsonar.login=$SONARQUBE_LOGIN '
		}
            }
        }
    }
}
