provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "practice_server" {
  ami           = "ami-0f1dcc636b69a6438"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkins-terraform-practice"
  }
}
