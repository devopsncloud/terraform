output "private_ip" {
  value = aws_instance.module_instance.private_ip
  
}


output "public_ip" {
  value = aws_instance.module_instance.public_ip
  
}

output "instance_id" {
  value = aws_instance.module_instance.id

}



