resource "aws_key_pair" "bastion_host" { 
key_name = "class2-key"
public_key = file("~/.ssh/id_rsa.pub")
}
