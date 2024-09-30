variable "instance_type" {
    default = {
        dev = "t2.micro"
        prod = "t3.small"
        QA = "t3.medium"

    }

}


variable "ami" {

    default = "ami-0b4f379183e5706b9"
}