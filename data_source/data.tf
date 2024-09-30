data "aws_ami" "ubuntu_ami" {
    owners      = ["099720109477"]
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu-pro-server/images/hvm-ssd-gp3/ubuntu-noble-24.04-arm64-pro-server-20240423"] #Centos-8-DevOps-Practice
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_vpc" "default_vpc_id" {
    default = true
}