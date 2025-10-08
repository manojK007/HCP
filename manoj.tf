provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "karnal" {
count = 10
    ami = "ami-052064a798f08f0d3"
    instance_type = "t3.micro"
    tags = {
        Name = "manoj1122"
    }
  
}
