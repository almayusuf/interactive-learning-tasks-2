resource "aws_security_group" "allow_rds" {
  name        = "allow_rds"
  description = "MySQL access"
  vpc_id      = aws_vpc.main.id



  ingress {
    description      = "MySQL access from within VPC"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
    
  }
}
