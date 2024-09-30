resource "aws_instance" "provisioner_instance" {
    ami = var.ami
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.provisioner_sg.id]

    tags = {
        Name = "provisioner_instance"
    }

    provisioner "local-exec" {
        command = "echo  The servers ip address is ${self.private_ip}"
    }

    connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
    }
  
    
    provisioner "remote-exec" {
        inline=[
            "echo 'This text is written onto remote server'> /tmp/remotefile.text",
            "sudo yum install nginx -y",
            "sudo systemctl start nginx"]
    }

}


    

resource "aws_security_group" "provisioner_sg"{
    name = "provisioner_sg"

    ingress {
    description = "Allow ssh port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
    description = "Allow http port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

    tags = {
Name = "provisione_sg"
}

}


# provisioner "local-exec" {
#         command = "echo "This command run on the local machine, where terraform is executing""

#     }

#     provisioner "local-exec" { 
#         command = "echo This statement needs to be executed with condition when destroy"
#         when = destroy 
#     }
