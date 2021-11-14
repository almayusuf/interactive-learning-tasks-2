resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.101.0/24"

  tags = {
    Team = "DevOps"
    Environment = "Dev" 
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.102.0/24"

  tags = {
    Team = "DevOps"
    Environment = "Dev" 
  }
}

resource "aws_subnet" "private_subnet_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.103.0/24"

  tags = {
    Team = "DevOps"
    Environment = "Dev" 
  }
}

