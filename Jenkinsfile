pipeline {
  agent any
  stages {
    stage('Install_Terraform') {
      steps {
        sh '''yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum install terraform -y
terraform -version '''
      }
    }

    stage('Success') {
      steps {
        sh 'Terraform successfully installed. '
      }
    }

  }
}