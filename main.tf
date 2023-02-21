resource "aws_instance" "instance" {
  ami = var.instance_ami
  instance_type = var.instance_type
  tags = {
    Name="ambidextrous_instance"
  }
}