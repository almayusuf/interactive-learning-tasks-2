 resource "null_resource" "myscript" {
  depends_on = [aws_instance.web, aws_security_group.sec_group_for_jenkins]
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
     source = "jenkins.sh"
     destination = "/tmp/jenkins.sh"
   }
    provisioner "remote-exec" {
    connection {
      host        = aws_instance.web.public_ip
      type        = "ssh"
      user        = "centos"
      private_key = file("~/.ssh/id_rsa")
    }
   

   inline = [
      "sudo bash /tmp/jenkins.sh",
      
    ]
  }   
}