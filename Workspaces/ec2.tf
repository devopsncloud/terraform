resource "aws_instance" "workspace_instance" {
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace)


    tags = {
        Name = "Hello! Workspaces"
    }

}