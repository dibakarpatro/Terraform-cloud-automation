resource "aws_instance" "dev" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "windows-demo"
    for_each = toset(var.sandbox)
    tags = {
    Name =each.value
}
}
#prabhakar i-04035587ecb8f4894
#dibakar i-02cf85ba36d21d8d1
#sudhakar i-0eb42b6951ea85516

#if i'm deleting a instnace called dibakar then that instance i'd is going to delete which is not interfereing any instance

#after hiting destroy the status of the instance given below
#prabhakar i-04035587ecb8f4894
#sudhakar i-0eb42b6951ea85516
#this for_each will work under itteration methon in the list if we are having three instance to create the itteration will create for 3 times
