variable "env" {
  type        = string
  description = " This is a variable for environment "
  default     = "dev"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0d8767a2191179688"
}
variable "subnets" {
  type    = list(string)
  default = ["subnet-08695882dab2566b1", "subnet-01c214c9b74272ea0"]
}
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "stage" {
  type    = string
  default = "nonprod"
}

variable "project" {
  type    = string
  default = "akumoSolutions"
}

variable "app_port" {
  type    = number
  default = 80
}

variable "ports" {
  type    = list(string)
  default = ["80", "443", "22"]
}

variable "egress_port" {
  type    = number
  default = 0
}

variable "egress_protocol" {
  type    = number
  default = "-1"
}

variable "sg_cidr" {
  type    = string
  default = "0.0.0.0/0"
}