resource "aws_instance" "dev" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "windows-demo"
    count = length(var.sandbox) # count = 2 (here two instance will be created)
    tags = {
     # Name="test-${count.index}" #count operation (0,1,2..)
      Name=var.sandbox[count.index] #we have to mention count.index because here the count operation will help to call the 0th index, next 1st index ..

    }
}