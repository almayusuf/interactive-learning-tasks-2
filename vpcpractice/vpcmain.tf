#This creates a VPC 
#Resource: aws_vpc
resource "aws_vpc" "main" {
  cidr_block = var.vpc-cidr
  enable_dns_hostnames = true

} 





#This creates an internet gateway 
# aws_internet_gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

}

#This creates a route table for public subnets 
#Resource: aws_route_table
resource "aws_route_table" "forpublicsubnets" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  } 

}

  ######This creates a route table for private subnets 
#Resource: aws_route_table
// resource "aws_route_table" "forprivatesubnets" {
//   vpc_id = aws_vpc.main.id

//   route {
//     cidr_block = "10.0.0.0/24"
//     gateway_id = aws_internet_gateway.gw.id
//   }
// }

#####this creates security group for the public subnet
# Resource: aws_security_group

// resource "aws_security_group" "public1" {
//   name        = "allow_tls"
//   description = "Allow TLS inbound traffic"
//   vpc_id      = aws_vpc.main.id

//   ingress {
//     description      = "TLS from VPC"
//     from_port        = 443
//     to_port          = 443
//     protocol         = "tcp"
//     cidr_blocks      = [aws_vpc.main.cidr_block]
//     ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
//   }
  
// }


#####this creates security group for the private subnet
##### Resource: aws_security_group

  // resource "aws_security_group" "private" {
  // name        = "allow_tls"
  // description = "Allow TLS inbound traffic"
  // vpc_id      = aws_vpc.main.id

  // ingress {
  //   description      = "TLS from VPC"
  //   from_port        = 22
  //   to_port          = 22
  //   protocol         = "tcp"
  //   cidr_blocks      = [aws_vpc.main.cidr_block]
  //   ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  // }

  // egress {
  //   from_port        = 22
  //   to_port          = 22
  //   protocol         = "-1"
  //   cidr_blocks      = ["0.0.0.0/0"]
  // }
  // }

  #This creates public subnet1
#Resource: aws_subnet
  resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.publicsubnet1cidr
  availability_zone = "us-east-1a" 
  map_public_ip_on_launch = true 

}

#This creates public subnet2
#Resource: aws_subnet
  resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.publicsubnet2cidr
  availability_zone = "us-east-1b" 
  map_public_ip_on_launch = true 

  }

#This creates private subnet1
#Resource: aws_subnet
  resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.privatesubnet1cidr
  availability_zone = "us-east-1a" 
  map_public_ip_on_launch = false 

  }

  #This creates private subnet2
#Resource: aws_subnet
  resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.privatesubnet2cidr
  availability_zone = "us-east-1b" 
  map_public_ip_on_launch = false 
  
  }

  #This connects public subnets to public route table and public route table to internet gateway
  #Resource: aws_route_table_association
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.forpublicsubnets.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.forpublicsubnets.id
}


#####This connects private subnets to private route table 
  #Resource: aws_route_table_association
// resource "aws_route_table_association" "c" {
//   subnet_id      = aws_subnet.private1.id
//   route_table_id = aws_route_table.forprivatesubnets.id
// }


  

  
  



  


  

  

  

