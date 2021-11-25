data "aws_ami" "centos" { 
   
   most_recent = true
  


  filter {
    name   = "name"
  values = ["aws-parallelcluster-3.0.1-centos7-hvm-x86_64-202110221105 2021-10-22T11-08-34.673Z"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
}
 owners = ["247102896272"] 


} 

resource "aws_instance" "web" {
  ami                    = data.aws_ami.centos.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sec_group_for_jenkins.id]
  key_name               = aws_key_pair.key_pair_for_jenkins.key_name
  subnet_id = aws_subnet.main.id
  availability_zone      = data.aws_availability_zones.all.names[2]

  associate_public_ip_address = true
}

data "aws_availability_zones" "all" {}



