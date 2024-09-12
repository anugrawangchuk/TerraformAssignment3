variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "name" {
  description = "Name tag for the security groups"
  type        = string
}

variable "allowed_cidrs" {
  description = "List of allowed CIDR blocks for private SG"
  type        = list(string)
}

