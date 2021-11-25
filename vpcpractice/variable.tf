variable "vpc-cidr" { 
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string 
}

variable "publicsubnet1cidr" { 
    default = "10.0.1.0/24"
    description = "Public_subnet_1 CIDR Block"
    type = string 
}

variable "publicsubnet2cidr" { 
    default = "10.0.2.0/24"
    description = "Public_subnet_2 CIDR Block"
    type = string 
}

variable "privatesubnet1cidr" { 
    default = "10.0.11.0/24"
    description = "Private_subnet_1 CIDR Block"
    type = string 
}

variable "privatesubnet2cidr" { 
    default = "10.0.12.0/24"
    description = "Private_subnet_2 CIDR Block"
    type = string 
}




