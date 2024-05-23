provider "aws" {
  region = "us-east-1"
}
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "dev" {
    ami = "ami-0bb84b8ffd87024d8" #var.ami_id
    instance_type = "t2.micro" #var.
    key_name = "windows-demo"
    #if we are doing apply here this instance cant decide 
}