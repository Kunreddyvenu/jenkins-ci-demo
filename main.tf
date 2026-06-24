terraform {
  backend "s3" {
    bucket = "venu-terraform-state-2026"
    key    = "jenkins-ci-demo/terraform.tfstate"
    region = "us-east-1"
   use_lockfile = true
  }
}
provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "jenkins_demo" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"

tags = {
  Name = "jenkins-terrafrom-practice"

} 
}

