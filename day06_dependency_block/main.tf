provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "dev" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "windows-demo"
}
resource "aws_s3_bucket" "dev" {
    bucket = "teribatooonmeessauljhajiya"
    depends_on = [ aws_instance.dev ]
}
