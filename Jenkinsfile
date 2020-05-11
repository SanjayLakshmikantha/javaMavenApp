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

 //   stage('Build image') {
        /* This builds the actual image */
/*	app = docker.build("sanjaylakshmikantha/dockerapp:latest")
        
    }*/

 /*   stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }*/

 /*   stage('Push image') {
       
	    sh label: '', script: 'docker logout'
	    sh label: '', script: 'docker login -u sanjaylakshmikantha -p Sudha4567_Feb'
         //sh label: '', script: 'docker tag mtkcc sahana1212/mtkcc'
         sh label: '', script: 'docker push sanjaylakshmikantha/dockerapp:latest'

                echo "Trying to Push Docker Build to DockerHub"
    }*/
	stage('Pull image from dockerhub') {
          
        sh label: '', script: 'docker pull sanjaylakshmikantha/dockerapp:latest'
            
                echo "Trying to Pull Docker Build to DockerHub" 
    }
	stage('Run Image') {
          
        sh label: '', script: 'docker run -it -d sanjaylakshmikantha/dockerapp'
            
                echo "Trying to run docker image" 
    }
}
