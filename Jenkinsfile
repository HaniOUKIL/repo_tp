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
                mvn clean vérifier sonar:sonar \
  		-Dsonar.projectKey=projet_sonarqube \
  		-Dsonar.host.url=http://f27e-89-87-104-206.ngrok.io \
  		-Dsonar.login=2f2201ce672db686f45ae0fd0c39932ff709534f
            }
        }
    }
}
