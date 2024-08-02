variable "region" {
  type        = string
  description = "The Wasabi region to deploy Wasabi resources into"
}

variable "access_key" {
  type        = string
  description = "Wasabi access key"
}

variable "secret_key" {
  type        = string
  description = "Wasabi secret key"
}

variable "bucket_name_postfix" {
  type        = string
  description = "Postfix to use for all bucket names"
}