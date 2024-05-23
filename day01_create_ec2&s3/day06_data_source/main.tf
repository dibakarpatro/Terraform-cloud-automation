provider "aws" {
}
#data source is not reccomended becoz for eg: we can hardcode our subnet value if we requied no need of these complexity
data "aws_subnet" "selected"{
   filter {
     name = "tag:Name"
     values = [ "example" ] #here we will give our subnet name at which subnet we're going to create our instance
        }
}
resource "aws_instance" "dev" {
    ami= "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "windows-demo"
    subnet_id = data.aws_subnet.selected.id  #we need to call the data here
}


