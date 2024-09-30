resource "aws_instance" "roboshop_instances" {
    for_each = var.instance_names
    ami = var.ami_id
    instance_type = each.value

    tags = {
        Name = each.key

    }
}

# resource "aws_route53_record" "www" {
#   count = length(var.instance_names)
#   zone_id = var.route53_zone_id
#   name    = "${var.instance_names[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [var.instance_names[count.index] == "web" ? aws_instance.roboshop_instances[count.index].public_ip : aws_instance.roboshop_instances[count.index].private_ip]
# }

resource "aws_route53_record" "www" {
  for_each = aws_instance.roboshop_instances
  zone_id = var.route53_zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}










# output "roboshop_instances_info" {
#     value = aws_instance.roboshop_instances

# }



