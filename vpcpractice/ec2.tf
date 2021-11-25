data "aws_ami" "ubuntupublic1" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Cloud9Ubuntu-2021-11-15T13-30"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["327094444948"] # Canonical
}

resource "aws_instance" "public1" {
  ami           = data.aws_ami.ubuntupublic1.id
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.public1.id
    device_index         = 0
  }

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_network_interface" "public1" {
  subnet_id   = aws_subnet.public1.id
  
}

  

data "aws_ami" "ubuntupublic2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Cloud9Ubuntu-2021-11-15T13-30"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["327094444948"] # Canonical
}

resource "aws_instance" "public2" {
  ami           = data.aws_ami.ubuntupublic2.id
  instance_type = "t2.micro"
  network_interface {
    network_interface_id = aws_network_interface.public2.id
    device_index         = 0
  }

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_network_interface" "public2" {
  subnet_id   = aws_subnet.public1.id
  
}

  

data "aws_ami" "ubuntuprivate1" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Cloud9Ubuntu-2021-11-15T13-30"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["327094444948"] # Canonical
}

resource "aws_instance" "private1" {
  ami           = data.aws_ami.ubuntuprivate1.id
  instance_type = "t2.micro"
  network_interface {
    network_interface_id = aws_network_interface.private1.id
    device_index         = 0
  }

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_network_interface" "private1" {
  subnet_id   = aws_subnet.private1.id
  
}

  
  data "aws_ami" "ubuntuprivate2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Cloud9Ubuntu-2021-11-15T13-30"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["327094444948"] # Canonical
}

resource "aws_instance" "private2" {
  ami           = data.aws_ami.ubuntuprivate2.id
  instance_type = "t2.micro"
  network_interface {
    network_interface_id = aws_network_interface.private2.id
    device_index         = 0
  }


  tags = {
    Name = "HelloWorld"
  }

}

resource "aws_network_interface" "private2" {
  subnet_id   = aws_subnet.private2.id
  
}

  