resource "aws_instance" "roboshop_instances" {
    #count = 11 #count.index is a special variable given by terraform to count 
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = (var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "shipping" || 
var.instance_names[count.index] == "mysql") ? "t3.small" : "t2.micro" 

    tags = {
        Name = var.instance_names[count.index]

    }
}


resource "aws_route53_record" "www" {
  count = length(var.instance_names)
  zone_id = var.route53_zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index] == "web" ? aws_instance.roboshop_instances[count.index].public_ip : aws_instance.roboshop_instances[count.index].private_ip]
}