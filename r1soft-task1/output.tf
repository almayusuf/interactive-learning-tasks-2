
output "CentOS_ID"  { 
    value = "ami-0affd4508a5d2481b" 
}
  
  output "Host_Address" { 
      value = aws_instance.r1soft.public_ip
  }
