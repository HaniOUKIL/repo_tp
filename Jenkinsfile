node {
	def app
	stage('Clone') {
		checkout scm
	}
	stage('Build Image') {
		app = docker.build("./webapp/target/webapp.war")
	}
	stage('Test Image') {
		docker.image('tomcat:latest').withRun(' -p 80:80' ) { c ->
		sh 'docker ps'
		sh 'curl localhost'
		}
	}		
}
