
resource "aws_key_pair" "ilearning-wordpress" {
  key_name   = "ilearning-wordpress"
  public_key = file("~/.ssh/id_rsa.pub")
  key_pair_id = "key-04b5615a29216e7c6"
}

data "aws_region"   "current"  {}

