variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the instance"
  type        = string
}

variable "name" {
  description = "Name tag for the instances"
  type        = string
}
variable "key_name" {
  description = "The SSH key pair name to use for this instance"
  type        = string
}

