pipeline {
        agent any
        stages {
                stage ( ' Build ') {
                        steps {
                                sh "mvn --version"
                                sh "mvn clean package"
                        }
                }
 		stage ( ' Test ') {
                        steps {
                                sh "mvn clean test"
                        }
                }
        }
}

