provider "aws" {
    region = "eu-west-2"
}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "myvpc2" {
    cidr_block = "192.168.0.0/24"
}

# run it with terraform import aws_vpc.myvpc2 <vpc_id>
# 2nd vpc was created manually on the aws console 
