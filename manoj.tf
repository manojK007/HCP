provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count = 4
  ami = "ami-00af95fa354fdb788"
  key_name = "manojkey"
  vpc_security_group_ids = ["sg-05550576644c6cf14"]
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "tomcat-2", "monitoring-server"]
}
