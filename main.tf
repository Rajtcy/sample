provider "aws" {
    region = "ap-south-1"
    access_key = "AKIA6HAI6IPBRDQT7LFI"
    secret_key = "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"  
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "development"
    }
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "subnet-1-dev"
    }
}