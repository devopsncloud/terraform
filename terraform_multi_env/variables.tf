
variable "instance_names" {
  type = map
  default = {
  mongodb = "t3.small"
  catalogue = "t2.micro"
  user = "t2.micro"
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