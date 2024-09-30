resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.First_SG.id]

  tags = {
    Name = "First_Instance"
  }
}


resource "aws_security_group" "First_SG" {
  name        = "web_sg"
  description = "sg for web"

  ingress {
    description = "Allow all"
    from_port   = var.inbound-from_port
    to_port     = var.inbound-to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "web-sg"
  }
}