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
  region  = "us-east-1"
}

resource "aws_instance" "app_server_ec2_1" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = var.app_server_instance_type["ec2-1"]

  tags = {
    Name = var.app_server_ec2["ec2-1"]
  }
}

resource "aws_instance" "app_server_ec2_2" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = var.app_server_instance_type["ec2-2"]

  tags = {
    Name = var.app_server_ec2["ec2-2"]
  }
}



resource "aws_instance" "app_server_ec2_3" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = var.app_server_instance_type["ec2-3"]

  tags = {
    Name = var.app_server_ec2["ec2-3"]
  }
}

resource "aws_instance" "app_server_ec2_4" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = var.app_server_instance_type["ec2-4"]

  tags = {
    Name = var.app_server_ec2["ec2-4"]
  }
}

output ec2-4-instance-type {
  value = aws_instance.app_server_ec2_4.instance_type
}

resource "local_file" "ec2-4-instance-type" {
    content  = aws_instance.app_server_ec2_4.id
    filename = "ec2-4-instance-type.txt"
}