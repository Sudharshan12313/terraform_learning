variable "vpc_cidr" {
  type = string
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  type = string
  description = "Name of the VPC"
}

variable "public_subnet_count" {
  type = number
  description = "Number of public subnets"
}

variable "public_subnet_cidrs" {
  type = list(string)
  description = "List of CIDR blocks for public subnets"
}

variable "availability_zones" {
  type = list(string)
  description = "List of availability zones for subnets"
}
