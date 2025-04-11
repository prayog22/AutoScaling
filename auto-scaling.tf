resource "aws_launch_template" "auto-scaling-group" {
    name_prefix = "auto-scaling-group"
    image_id = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    key_name = "Tools"
    vpc_security_group_ids = [aws_security_group.web.id] 
  
}

resource "aws_autoscaling_group" "auto-scaling-group" {
    availability_zones = ["us-east-1b"]
    desired_capacity = 1
    max_size = 2
    min_size = 1

    launch_template {
      id = aws_launch_template.auto-scaling-group.id
      version = "$Latest"
    }
  
}