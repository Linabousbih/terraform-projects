provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "intro" {
  ami                    = "ami-030594f92006445fd"
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-2a"
  key_name               = "tutorial"
  vpc_security_group_ids = ["sg-047873adc748f4bdc"]
  tags = {
    Name = "First Exercice"
    Project = "Udemy"
  }
}