variable "backend_s3" {
  default = "seobi-devops-terraform"
}

variable "region" {
  default = "ap-northeast-2"
}

variable "vpc_key" {
  default = "apne2/network/vpc/terraform.tfstate"
}

variable "tags" {}