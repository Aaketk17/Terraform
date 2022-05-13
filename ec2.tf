resource "aws_instance" "terraformCheckSecond" {
  ami = "ami-0fa49cc9dc8d62c84"
  instance_type = "t2.micro"
  key_name = "terra-check-ohion"

  tags = {
    "Name" = "Terraform-Check"
    "Engineer" = "Athavan"
  }
}