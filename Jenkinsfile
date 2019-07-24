pipeline {
    agent any
    options {
        checkoutToSubdirectory('source')
    }
    
    stages {
        stage ('Build') {
            
            steps {
                dir ('source') {
                    sh '''/var/lib/jenkins/maven/bin/mvn -Dmaven.test.failure.ignore=true clean install
                          cp -R target/*.war ansible/hello-world.war'''
                }
                dir ('source/terraform/dev') {
                    sh '/var/lib/jenkins/terraform init && terraform destroy -auto-approve'
                }
            }
        }
    }
}
