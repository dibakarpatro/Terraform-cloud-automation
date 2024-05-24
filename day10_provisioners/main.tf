provider "aws" {
  
}
resource "aws_key_pair" "keypair" { #here we are creating a new _keypair
    key_name ="linux-key3"
    public_key = file("~/.ssh/id_rsa.pub") #initially we have to mention the local .ssh pub file location, while creation it will help to handshake with remote pub file
  
}
resource "aws_instance" "dev" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = aws_key_pair.keypair.key_name #here we are mentioning our new keypair, so that while creation of instance it will take to my new keypair
    tags ={
      Name="dibakar"
    }

connection { #this is the automation process what we are doing my our 3rd party tool like mobaxterm for the connection purpose
    type = "ssh"
    user = "ec2-user"
    private_key = file("~/.ssh/id_rsa") #for connetion we have to give private key
    host = self.public_ip
}
provisioner "local-exec" { # after apply this file500 is going to create in local
    command = "touch file500"
}
provisioner "file" {
    source = "file10" #initially we have to create this file inside the respective folder and after apply it will go from local to remote
    destination = "/home/ec2-user/file10"  
}
provisioner "remote-exec" {
    inline = [ 
    "touch file200" , #after apply this file200 is going to create in remote 
    "echo hello from aws >> file200",
    ]
}
}
#for connection purpose we have to give private key
#for creation purpose we have to give public key
#at console (ec2-user) can shows the respected file because we mention as destination/ home/ec2-user/file10