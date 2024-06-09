provider "aws" {
  
}
resource "aws_instance" "dev" {
  ami = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  key_name = "windows-demo"
}
resource "null_resource" "null_resource_example" {
    provisioner "local-exec" {
      command = "echo ${aws_instance.dev.private_ip} >> private_ip.txt"
    } 
}
resource "null_resource" "null_resource_example2" {
    provisioner "local-exec" {
        command = "echo ${aws_instance.dev.public_ip} >> public_ip.txt" 
        
    } 
}