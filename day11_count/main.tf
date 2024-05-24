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
# jagannath i-019efd6d9e9fe012c
# balavdra i-0836b4ad6a546af21
# subhadra i-034c9b8090ab59174 

#suppose we are deleting the balavdra then the subhadra instance is going to delete and with the balabhadra id subhadra name is going to replce
# 1 change and 1 destroy

#jagannth i-019efd6d9e9fe012c
#subhadra i-0836b4ad6a546af21