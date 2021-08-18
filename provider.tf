terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.54.0"
    }
    rancher2 = {
      source  = "rancher/rancher2"
      version = "1.17.0"
    }
  }
}

provider "aws" {
    region     = var.region
    access_key = var.ACCESS_KEY
    secret_key = var.SECRET_ACCESS_KEY
}

provider "rancher2" {
  api_url    = var.rancher_api_url
  access_key = var.rancher2_access_key
  secret_key = var.rancher2_secret_key
}