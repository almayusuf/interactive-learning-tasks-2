
# resource "null_resource" "jenkins_installation" {
#   depends_on = [aws_instance.web, aws_security_group.sec_group_for_jenkins]
#   triggers = {
#     always_run = timestamp()
#   }
#   provisioner "remote-exec" {
#     connection {
#       host        = aws_instance.web.public_ip
#       type        = "ssh"
#       user        = "centos"
#       private_key = file("~/.ssh/id_rsa")
#     }
#     inline = [
      
      
#     "sudo yum install wget -y",
#       "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo  --no-check-certificate",
#       "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
#       "sudo yum upgrade -y",
#       "sudo yum install epel-release java-11-openjdk-devel -y",
#       "sudo yum install jenkins -y",
#       "sudo systemctl daemon-reload",
#       "sudo systemctl start jenkins",
#       "sudo systemctl status jenkins",
#       "sudo cat /var/lib/jenkins/secrets/initialAdminPassword",
#     ]
#   }
# }