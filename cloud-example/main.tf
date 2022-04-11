terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
 # subnet_ids         = [aws_subnet.example.id]
  #transit_gateway_id = aws_ec2_transit_gateway.example.id
  #vpc_id = aws_vpc.example.id

  tags = {
    Name = "AppServerInstance"
  }
}
