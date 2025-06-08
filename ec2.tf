provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "cloud-drove-devops" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "devops-assoc-ec2"
  }
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.cloud-drove-devops.public_ip
}
