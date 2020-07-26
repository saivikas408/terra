provider "aws" {
  region  = var.region
}

variable "region" {
  description = "region to deploy terraform"
}

resource "aws_instance" "myserver" {
  ami           = "ami-016b213e65284e9c9"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
