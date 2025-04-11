output "instance_id" {
    value = aws_instance.Globle.id  
}

output "instance_public_ip" {
  value = aws_instance.Globle.public_ip 
}

output "instance_private_ip" {
  value = aws_instance.Globle.private_ip 
}
  