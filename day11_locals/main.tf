locals {
  bucket_name="${var.layer}-${var.env}-bucket-hydnit"
}
resource "aws_s3_bucket" "dev" {
    bucket = local.bucket_name 
}
#this was a simple task only it will call the variable file 
#what is diffence between locals and dev ?
#in locals we can declare the variable multiple time while in dev it works for a single time (indivisual string)