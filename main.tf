provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops-practice-server" {
  ami           = "0220d79f3f480ecf5"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-terraform-practice"
  }
}
