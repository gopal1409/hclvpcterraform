variable "aws_region" {
    description = "Region in which aws resrouce is going to be created"
    type = string
    default = "us-east-1"
}
#environment variable
variable "environment" {
  type = string
  default = "gopal"
  
}

variable "business_devision" {
  description = "Business division"
  type = string
  default = "HR"
}
variable "private_instance_count" {
  type = number
  default = 2
}