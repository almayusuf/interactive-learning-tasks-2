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

  owners = ["247102896272"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.centos.id
  instance_type = "t2.micro"
  vpc_security_group_ids = ["aws_security_group.allow_SSH.id"]

  tags = {
    Name = "HelloWorld"
  }

}






