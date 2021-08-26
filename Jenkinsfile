pipeline {
    agent any 
    stages {
	   stage ('check-in')
	        {
		     steps {
    			       //input 'Do you want to continue building?'
                                echo "Start Building "
		           }
	        }
	    
	  stage('Build Started Mail Sent')
	       {
                    steps {
                                notifyBuildStarted()
                          }
	       }
          
           stage('Building DDL files->DML files->PKS file->PKB file->Shell Script')
	        {
                    steps {
                               //sh './main_script.sh'
		               bat script: 'main_script.sh';
                           }  
                }   
        
           stage('Success') 
	        {
                    steps {
                               echo "Successfully Build"
                          }
                }
        }  //stages over
post {
        always {
                 
            echo "Sending Feedback Mail"
     		// Feedback Mail Sent
            emailext body: "${currentBuild.currentResult}: Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}",
                recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']],
                subject: "Jenkins Build ${currentBuild.currentResult}: Job ${env.JOB_NAME}",
                to: 'rssharma7431201@gmail.com'
         
        }
    }//post over
    
} // pipeline over    
     def notifyBuildStarted()
                          {
                               emailext body: "Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} started \n More info at: ${env.BUILD_URL}",
                               recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']],
                               subject: "Jenkins Build Started: Job ${env.JOB_NAME}"
		               to: 'rssharma7431201@gmail.com'
			  }
