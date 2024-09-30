variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type"{
    type = string
    default = "t2.micro"
}

variable "instance_names" {
    type = list
    default = ["mongodb","catalogue","user","cart","payment","shipping","mysql","redis","dispatch","rabbitmq","web"]

}


variable "route53_zone_id" {
    type = string
    default = "Z04039613RABGV7GUAUIJ"

}

variable "domain_name" {
    type = string
    default = "roboriya.shop"

}