variable "vpc_cidr_block" {
  description = "Value for cidr"
  default     = "10.0.0.0/16"
}

variable "subnet_az" {
  default     = "us-east-1"
  description = "Value for Availabilty zone of subnet"
}

variable "sg-name" {
  description = "Name for Security group"
}

variable "region" {
  description = "prvoder region"
}

variable "instance_type" {
  description = "ec2 instance_type"
}

variable "key_name" {
  description = "ec2 key pair"
}
variable "ami_id" {
  description = "ec2 ami id"
}
