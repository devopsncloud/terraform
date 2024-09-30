resource "aws_instance" "roboshop_instances" {
    for_each = var.instance_names
    ami = data.aws_ami.centos8.id
    instance_type = each.value

    tags = {
        Name = each.key

    }
}


resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop_instances
  zone_id = var.route53_zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [ startswith(each.key,"web") ? each.value.public_ip : each.value.private_ip ]
}

#startswith is builtin function from terraform



