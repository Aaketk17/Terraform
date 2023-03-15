variable instance_type {
    type = string
    default = "t2.micro"
}

variable "ami_value" {
    type = string
    default = "ami-02238ac43d6385ab3"
}

variable "subnet_id" {
    type = string
}