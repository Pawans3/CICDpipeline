provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-03c68e52484d7488f" # Replace with a valid AMI ID
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = "WebServer"
  }
}
