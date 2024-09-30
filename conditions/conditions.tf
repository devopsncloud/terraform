resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_name == "Mongodb" ? "t3.small" : "t2.micro"
  
}
