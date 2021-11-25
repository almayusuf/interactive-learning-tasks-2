#Variables
variable "vpc_cidr" {
    description = "this block makes connection with VPC"
    default = "10.0.0.0/16"
  }

variable "public1_cidr" {
    description = "this block belong to public1"
    default = "10.0.1.0/24"
}

variable "public2_cidr" {
    description = "this block belong to public2"
    default = "10.0.2.0/24"
}

variable "public3_cidr" {
    description = "this block belong to public3"
    default = "10.0.3.0/24"
}

variable "egress_cidr" {
    description = "this block belong to security group egress cidr"
    default = "0.0.0.0/0"
}






variable "ssh_port_from" {
    description = "this block belong to security group ssh port"
    default = "22"
}

variable "ssh_port_to" {
    description = "this block belong to security group ssh port"
    default = "22"
}

variable "https_port_from" {
    description = "this block belong to security group https port"
    default = "8080"
}

variable "https_port_to" {
    description = "this block belong to security group https port"
    default = "8080"
}

variable "http_port_from" {
    description = "this block belong to security group http port"
    default = "80"
}

variable "http_port_to" {
    description = "this block belong to security group http port"
    default = "80"
}