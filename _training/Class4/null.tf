resource "null_resource" "myscript" {
    triggers = {
        always_run = timestamp()
    }
    provisioner "remote-exec" {
    inline = [
      "yum install httpd -y",
      "systemctl start httpd", 
      "systemctl enable httpd", 
      "yum install unzip -y",
    ]
  }
    connection {
        type     = "ssh"
        user     = "centos"
        private_key = file("~/.ssh/id_rsa")
        host     = aws_instance.web.public_ip
}
}