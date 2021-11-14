variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "public1_cidr" { 
    description = "this block belongs to public1 subnet" 
    default = "10.0.1.0/24"
}

variable "public2_cidr" { 
    description = "this block belongs to public2 subnet" 
    default = "10.0.2.0/24"
}

variable "public3_cidr" { 
    description = "this block belongs to public3 subnet" 
    default = "10.0.3.0/24"
}

variable "ssh_port_from" { 
    description = "this block belongs to security group ssh port" 
    default = "22"
}

variable "ssh_port_to" { 
    description = "this block belongs to security group ssh port" 
    default = "22"
}



variable "http_from" { 
    description = "this block belongs to security group ssh port" 
    default = "80"
}

variable "http_to" { 
    description = "this block belongs to security group ssh port" 
    default = "80"
}

variable "https_from" { 
    description = "this block belongs to security group ssh port" 
    default = "443"
}

variable "https_to" { 
    description = "this block belongs to security group ssh port" 
    default = "443"
}

variable "egress_cidr" { 
    description = "this block belongs to security group egress cidr" 
    default = ["0.0.0.0/0"]
   
}

