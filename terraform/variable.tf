variable "instance_name" {
  default = "web-server"
  type    = string
}

variable "ami" {
  default = "ami-0ecb62995f68bb549" # Ubuntu Server
  type    = string
}

variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "env" {
  default = "dev"
  type    = string
}
