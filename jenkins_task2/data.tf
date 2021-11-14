data "aws_ami" "centos" { 
   
   most_recent = true
   
  filter {
    name   = "name"
  values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
}

owners = ["417015064950"] 
} 

resource "aws_instance" "web" {
  ami                    = data.aws_ami.centos.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sec_group_for_jenkins.id]
  key_name               = aws_key_pair.key_pair_for_jenkins.key_name
  subnet_id = aws_subnet.main.id
  availability_zone      = data.aws_availability_zone.example
  associate_public_ip_address = true
}

