variable "app_server_ec2" {
  type = map
  default = {
    "ec2-1" = "Dev-1"
    "ec2-2" = "Dev-2"
    "ec2-3" = "Dev-3"
    "ec2-4" = "Dev-4"
  }
}
variable "app_server_instance_type" {
  type = map
  default = { 
    "ec2-1" = "t2.micro"
    "ec2-2" = "t2.micro"
    "ec2-3" = "t2.micro"
    "ec2-4" = "t2.micro"
}
}
