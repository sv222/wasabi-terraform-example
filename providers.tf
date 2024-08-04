# Source: https://registry.terraform.io/providers/terrabitz/wasabi/latest

terraform {
  required_providers {
    wasabi = {
      source  = "terrabitz/wasabi"
      version = "4.1.3"
    }
  }
}

provider "wasabi" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}