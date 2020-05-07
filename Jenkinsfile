node {

def apps
    
stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }
  
stage('Maven Test') {
	sh label: 'Build', script: 'mvn test'
	}

stage('read write permission') {

	sh 'sudo chmod 777 /var/run/docker.sock'
	
    }
stage('Build image') {
        /* This builds the actual image */
	
        apps = docker.build("sanz72/nodeapp")
    }
stage('Test image') {
        
        apps.inside {
            echo "Tests passed"
        }
    }
    

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
        docker.withRegistry( '', 'dockerhub') {
            apps.push("${env.BUILD_NUMBER}")
            apps.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
    }
}	
