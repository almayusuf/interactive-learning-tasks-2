resource "aws_nat_gateway" "nat_gateway_in_public_subnet_1" {
  allocation_id = aws_vpc.main.id
  subnet_id     = aws_subnet.public_subnet_1.id

  tags = {
    Team = "DevOps"
    Environment = "Dev" 
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}
