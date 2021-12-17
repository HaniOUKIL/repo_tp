pipeline {
        agent any
        stages {
		stage ( ' Clone ') {
                        steps {
                                sh "git clone https://github.com/HaniOUKIL/repo_tp.git"
                        }
                }

                stage ( ' Build ') {
                        steps {
                                sh "mvn --version"
                                sh "mvn clean package"
                        }
                }
 		stage ( ' Build ') {
                        steps {
                                sh "mvn clean test"
                        }
                }
        }
}

