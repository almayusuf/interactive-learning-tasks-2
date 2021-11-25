#Security Group
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = var.https_port_from
    to_port          = var.https_port_to
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

    ingress {
    description      = "SSH from VPC"
    from_port        = var.ssh_port_from
    to_port          = var.ssh_port_to
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  
    ingress {
    description      = "SSH from VPC"
    from_port        = var.http_port_from
    to_port          = var.http_port_to
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.egress_cidr]
  }
}