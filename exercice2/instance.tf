resource "aws_key_pair" "dove_key" {
    key_name = "dovekey"
    public_key = file("dovekey.pub")
}

resource "aws_instance" "dove_instance" {
    ami = var.AMIS[var.REGION]
    instance_type = "t2.micro"
    availability_zone = var.ZONE
    key_name = aws_key_pair.dove_key.key_name
    vpc_security_group_ids = ["sg-047873adc748f4bdc"]
    tags = {
    Name = "First Exercice"
    Project = "Udemy"
    }
    provisioner "file" {
      source = "web.sh"
      destination = "/tmp/web.sh"
    }

    provisioner "remote-exec" {
        inline = [ 
            "chmod u+x /tmp/web.sh",
            "sudo /tmp/web.sh"
         ]
    }
    connection {
      user = var.USER
      private_key = file("dovekey")
      host = self.public_ip
    }
}

output "PublicIP" {
  value = aws_instance.dove_instance.public_ip
}

output "PrivateIP" {
  value = aws_instance.dove_instance.private_ip
}