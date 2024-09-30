variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"

}

variable "instance_type"{
    type = string
    default = "t2.micro"

}

variable "inbound-from_port" {
    default = 0

}

variable "inbound-to_port" {
    default = 0

}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
}