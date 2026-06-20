provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops-practice-server" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = "my first ec2 instance"
  }
}
