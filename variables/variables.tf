variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type"{
    type = string
    default = "t2.micro"
}


variable "tags"{
    type = map
    default = {
        Name = "Hello Terraform"
        Project = "Roboshop"
        Environment = "DEV"
        Component = "web"
        Terraform = "true"

    }
}

variable "sg_name"{
    type = string
    default = "web_sg"
}

variable "description" {
    type = string
    default = "sg_for_roboshop"

}

variable "inbound-from_port" {
    type = number
    default = 0

}

variable "inbound-to_port" {
    type = number
    default = 0

}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}