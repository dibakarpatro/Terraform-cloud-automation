resource "aws_instance" "dev" {
    ami = "ami-0bb84b8ffd87024d8"
    key_name = "windows-demo"
    instance_type = "t2.micro"
    user_data = file("test.sh")
    subnet_id              = var.subnet_id
    vpc_security_group_ids = [var.sg_id]
}
output "aws_instance" {
  value = aws_instance.dev.public_ip
}