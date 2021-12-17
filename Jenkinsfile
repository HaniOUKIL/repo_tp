mvn clean verify sonar:sonar \
  -Dsonar.projectKey=projet_sonarqube \
  -Dsonar.host.url=http://192.168.1.109:9000 \
  -Dsonar.login=b6d55d76c96d8b4ef7adffb36ab82740ab09afcb

pipeline {
        agent any
        stages {
                stage ( ' Build ') {
                        steps {
                                sh "mvn clean verify sonar:sonar"
                                sh "-Dsonar.projectKey=projet_sonarqube "
                                sh " -Dsonar.host.url=http://192.168.1.109:9000 "
			        sh " -Dsonar.login=b6d55d76c96d8b4ef7adffb36ab82740ab09afcb"

                        }
                }


        }
}
