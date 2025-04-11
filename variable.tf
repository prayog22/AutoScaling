variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "aws_access_key" {
    type = string
    sensitive = true  
}

variable "aws_secret_key" {
  type = string
  sensitive = true
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name" {
  type = string
  default = "Tools"
}

variable "ssh_port" {
  type = number
  default = 22
}

variable "http_port" {
  type = number
  default = 80
}

variable "https_port" {
  type = number
  default = 443 
}

variable "egress_port" {
  type = number
  default = 0
}

variable "security_group_name" {
  type = string
  default = "web"
}

variable "tag_name" {
  type = string
  default = "First-Instance"    
}

variable "aws_security_group_name" {
  type = string
  default = "terraform-instance"
}