pipeline {
  agent any
  stages {
    stage('Install_Terraform') {
      steps {
        sh '''
wget ftp://mirror.switch.ch/pool/4/mirror/centos/7.4.1708/os/x86_64/Packages/yum-3.4.3-154.el7.centos.noarch.rpm 
rpm -ivh yum-3.4.3-
yum install -y yum-utils
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