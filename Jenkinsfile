pipeline {
    agent any
    stages {
        stage( ' Build ' ) {
            steps {
                sh "sudo docker build -t hanioukil/my-private-repo ."
            }
        }
        stage( ' Run ' ) {
            steps {
                sh "sudo docker run hanioukil/my-private-repo && sudo docker push hanioukil/my-private-repo""
            }
        }
	stage( ' Push ' ) {
            steps {
                sh "sudo docker push hanioukil/my-private-repo"
            }
        }
  	stage( ' Stop ' ) {
            steps {
                sh "sudo docker rmi hanioukil/my-private-repo"
            }
        }
         
    }
}
