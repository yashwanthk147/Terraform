pipeline {
  agent any

  stages {
    stage('Terraform INIT') {
      steps {
        sh 'cd roboshop-shellscripting ; terraform init
      }
    }

    stage('Terraform Destroy') {
      steps {
        sh '''
          cd roboshop-shellscripting
          terraform apply -auto-approve
        '''
      }
    }

  }
}