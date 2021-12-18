pipeline {
    agent any
    envirenment { 
		SONARQUBE_URL = "http://c1a9-88-127-215-92.ngrok.io"
                SONARQUBE_PORT =  "9000"
                SONARQUBE_LOGIN =  "b6d55d76c96d8b4ef7adffb36ab82740ab09afcb"
    }
    stages {
        stage('Code Quality Analysis') {
            steps {
                git url: 'mvn clean verify sonar:sonar -Dsonar.projectKey=projet_sonarqube \
 						       -Dsonar.host.url=SONARQUBE_URL:SONARQUBE_PORT \
						       -Dsonar.login=SONARQUBE_LOGIN '
            }
        }
    }
}
