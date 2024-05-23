resource "aws_instance" "dev" { #creating ec2 instance
  ami = "ami-0bb84b8ffd87024d8"
  instance_type = "t2.micro"
  key_name = "linux-key"
}
resource "aws_s3_bucket" "dev" { #here "dev" is randomly given
  bucket = "imcreatingmyownbucket"
}

#initially we have to configure like terraform --configure then give your access key and secret access key so that you're going to link with your acc
#in terminal write terraform init, terraform plan and terraform apply -auto-approve