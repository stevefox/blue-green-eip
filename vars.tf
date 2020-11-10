variable "name" {
  description = "Your Name, or the value used to match the Name tag on the EC2s"
  type = string
}

variable "email" {
  description = "Your Email Address, or the value used to match the ResourceOwner tag on the EC2s"
  type = string
}

variable "target" {
  description = "Target for IP allocation"
  type = string
  default = "blue"
}
