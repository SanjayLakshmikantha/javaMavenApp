node {
    def app

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
	app = docker.build("sanjay/dockerapp")
        
        //app = docker.build("")
    }

 /*   stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }*/

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
       /* docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest") */
	    sh label: '', script: 'docker login -u sanjaylakshmikantha -p Sudha4567_Feb'
         //sh label: '', script: 'docker tag mtkcc sahana1212/mtkcc'
         sh label: '', script: 'docker push sanjay/dockerapp'

            } 
                echo "Trying to Push Docker Build to DockerHub"
    }
//	stage('Pull image from dockerhub') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
          
    /*     sh label: '', script: 'docker pull sanjay/dockerapp'
            } 
                echo "Trying to Pull Docker Build to DockerHub" */
    }
}
