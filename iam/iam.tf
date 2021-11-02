resource "aws_iam_user" "bob" {
  name = "bob"
  

  tags = {
    tag-key = "Team=DevOps"
  }
}
resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  
}


