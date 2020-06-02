resource "aws_instance" "my-ec2-instance1" {
  ami           = "ami-0e34e7b9ca0ace12d"
  instance_type = "t2.micro"
}