pipeline {
    agent {
        docker { image 'node:14-alpine' }
    } 
    stages {
        stage('Build') { 
            steps {
                // 
                echo 'build'
                echo "${IBM_CLOUD_SPACE}"
            }
        }
        stage('Test') { 
            steps {
                // 
                echo 'test'
            }
        }
        stage('Deploy') { 
            steps {
                // 
                echo 'deploy'
                sh "curl -fsSL https://clis.cloud.ibm.com/install/linux | sh"
                sh "ibmcloud plugin install cloud-functions"
                sh "ibmcloud plugin list"
                sh "ibmcloud login --apikey ${IBM_CLOUD_API_KEY} -r ${IBM_CLOUD_REGION}"
                sh "ibmcloud target -o ${IBM_CLOUD_ORG} -s ${IBM_CLOUD_SPACE}"
                sh "ibmcloud fn deploy --manifest manifest.yml"
                sh "ibmcloud fn list"
            }
        }
    }
}