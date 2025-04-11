data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "architecture"
    values = ["x86_64"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "Globle" {  
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.key_name  
  vpc_security_group_ids = [aws_security_group.web.id] 
  tags = {
    Name = var.tag_name
  }
}  

resource "aws_security_group" "web" {
  name = var.aws_security_group_name

  ingress {
    from_port   = var.ssh_port 
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  
}
  ingress {
    from_port   = var.http_port 
    to_port     = var.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  
}

  egress {
    from_port   = var.egress_port 
    to_port     = var.egress_port 
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}