resource "aws_security_group" "First_SG" {
  name        = var.sg_name
  description = var.description

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