provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "linux-key"

    tags = {
      Name = "newdev"
    }
  
}