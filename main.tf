provider "aws" {
  region = "us-east-1"
}

data "aws_instance" "blue" {
  filter {
    name = "tag:Name"
    values = [var.name]
  }
  filter {
    name = "tag:ResourceOwner"
    values = [var.email]
  }
  filter {
    name = "tag:Version"
    values = ["Blue"]
  }
}

data "aws_instance" "green" {
  filter {
    name = "tag:Name"
    values = [var.name]
  }
  filter {
    name = "tag:ResourceOwner"
    values = [var.email]
  }
  filter {
    name = "tag:Version"
    values = ["Green"]
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = lower(var.target) == "green" ? data.aws_instance.green.id : data.aws_instance.blue.id
  allocation_id = aws_eip.example.id
}

resource "aws_eip" "example" {
  vpc = true
}
