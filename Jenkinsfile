pipeline {
	agent any 
	stages {
		stage ( ' Build ') {
			steps {
				sh "mvn --version"
				sh "mvn clean package"
			}
		}
	}
}

node {
	def app
	stage(‘Clone’) {
		Checkout SCM
	}
	stage(‘Build Image’) {
		app = docker.build(“xavki/webapp.war”)
	}
	stage(‘Test Image’) {
		docker.image(‘/home/ubuntu/projet_tp/repo_tp/webapp/target/webapp.war’).withRun(‘ -p 80:80’ ) { c ->
		sh ‘docker ps’
		sh ‘curl localhost’
		}
	}		
}
