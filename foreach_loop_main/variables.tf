variable "ami_id"{
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type"{
    type = string
    default = "t2.micro"
}

variable "instance_names" {
    type = map
    default = {
    mongodb = "t3.small"
    catalogue = "t2.micro"
    user = "t2.micro"
    cart = "t2.micro"
    payment = "t2.micro"
    shipping = "t3.small"
    mysql = "t3.small"
    redis = "t2.micro"
    dispatch = "t2.micro"
    rabbitmq = "t2.micro"
    web = "t2.micro"
    }

}


variable "route53_zone_id" {
    type = string
    default = "Z04039613RABGV7GUAUIJ"

}

variable "domain_name" {
    type = string
    default = "roboriya.shop"

}