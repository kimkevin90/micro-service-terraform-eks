terraform {
  backend "s3" {
    bucket = "seobi-devops-terraform"
    key    = "dev/apne2/eks/demo/terraform.tfstate"
    region = "ap-northeast-2"
    #    role_arn    = "{ASSUMED_ROLE}"
    max_retries = 3
  }

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
    }
  }
}
