output "ami_id"{
    value = data.aws_ami.ubuntu_ami.id
}

output "vpc_info"{
    value = data.aws_vpc.default_vpc_id

}

