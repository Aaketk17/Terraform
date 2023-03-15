resource "aws_instance" "web" {
  ami           = var.ami_value
  instance_type = var.instance_type
  subnet_id = var.subnet_id

  tags = {
    Name = "Terraform Instance"
  }
}
