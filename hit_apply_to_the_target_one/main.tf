#if we are having one instance and one s3 bucket in our main.tf file we want to create only instance
#then we have to hit apply and give target <value>
resource "aws_instance" "dev" {
  ami = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  key_name = "windows-demo"
}
resource "aws_s3_bucket" "dev" {
    bucket = "tujhuthimainmakkkar" 
}

#at terminal you have to write terraform apply <space>-target <resource_type>.<resource_name>