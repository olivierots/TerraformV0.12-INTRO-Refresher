provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "ec2" {
    ami = "ami-0a13d44dccf1f5cf6"
    instance_type = "t2.micro"
}
