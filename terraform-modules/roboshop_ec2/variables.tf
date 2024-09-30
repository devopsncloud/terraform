variable "instance_type" {
    default = "t3.small"

}

variable "tags" {
    type = map
    default = {
        Name = "roboshop"
        terraform = true
        environment = "dev"
    }


}