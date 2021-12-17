pipeline {
        agent any
        stages {
		stage ( ' Clone ') {
                        steps {
                                sh "git clone https://github.com/HaniOUKIL/sonar.git"
                        }
                }

                stage ( ' Build ') {
                        steps {
                                sh "mvn --version"
                                sh "mvn clean package"
                        }
                }
        }
}

