module "first-module" {
    source = "github.com/dibakarpatro/main-varforec2/day01_terraform"
    ami_id = "ami-0bb84b8ffd87024d8" 
    instance = "t2.micro"
    keyname = "windows-demo"
}