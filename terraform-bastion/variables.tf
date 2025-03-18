################## Variables ##################
variable "region" {
  description = "AWS Region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Existing public subnet ID"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "security_group" {
  description = "Existing security group ID"
  type        = string
}
