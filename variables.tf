variable "aws_region" {
    description = "Region in which aws resrouce is going to be created"
    type = string
    default = "us-east-1"
}
#environment variable
variable "environment" {
  type = string
  default = "dev"
  
}

variable "business_devision" {
  description = "Business division"
  type = string
  default = "HR"
}