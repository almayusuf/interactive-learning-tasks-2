resource "aws_security_group" "allow_SSH" {
  name        = "allow_SSH"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSH from VPC"
    from_port        = var.https_from
    to_port          = var.https_to
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    
  }

  ingress {
    description      = "SSH from VPC"
    from_port        = var.ssh_port_from
    to_port          = var.ssh_port_to
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  
  }

  ingress {
    description      = "SSH from VPC"
    from_port        = var.http_from
    to_port          = var.http_to
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.egress_cidr]
   
  }

  
}