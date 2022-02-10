pipeline {
  agent any
  stages {
    stage('Install_Terraform') {
      steps {
        sh '''wget https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
rpm -ivh yum-3.4.3-154.el7.centos.noarch.rpm
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