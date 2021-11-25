 resource "null_resource" "myscript" {
  depends_on = [aws_instance.web, aws_security_group.allow_tls]
    triggers = {
        always_run = timestamp()
    }
    provisioner "file" {
     connection {
      host        = aws_instance.web.public_ip
      type        = "ssh"
      user        = "centos"
      private_key = file("~/.ssh/id_rsa")
    }
     source = "httpd.repo"
     destination = "/tmp/httpd.repo"
   }
    provisioner "remote-exec" {
    connection {
      host        = aws_instance.web.public_ip
      type        = "ssh"
      user        = "centos"
      private_key = file("~/.ssh/id_rsa")
    }
   

   inline = [
      "sudo bash /tmp/httpd.repo",
    
"sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
"sudo yum upgrade -y",
"sudo yum install epel-release java-11-openjdk-devel -y",
"sudo yum install jenkins -y",
"sudo systemctl daemon-reload",
"sudo systemctl start jenkins",
      
    ]
  }   
}