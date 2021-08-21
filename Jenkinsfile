pipeline {
  agent {
    node { label 'jenkins'}
  }

  options {
    ansiColor('xterm')
  }

  parameters {
    choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Pick a terraform action')
  }

  stages {

    stage('Terraform INIT') {
      steps {
        sh 'cd  roboshop-shellscripting ; terraform init'
      }
    }

    stage('Terraform Apply') {
      when {
        environment name: 'ACTION', value: 'apply'
      }
      steps {
        sh '''
          cd roboshop-shellscripting
          terraform apply -auto-approve
        '''
      }
    }

    stage('Terraform Destroy') {
      when {
        environment name: 'ACTION', value: 'destroy'
      }
      steps {
        sh '''
          cd roboshop-shellscripting
          terraform destroy -auto-approve
        '''
      }
    }

  }
}
