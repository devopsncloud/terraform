resource "aws_instance" "module_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = var.tags
}