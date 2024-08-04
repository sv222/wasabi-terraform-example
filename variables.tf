variable "region" {
  type        = string
  description = "The Wasabi region to deploy Wasabi resources into"
  validation {
    condition     = contains(["us-east-1", "us-east-2", "us-central-1", "us-west-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1"], var.region)
    error_message = "Invalid Wasabi region specified. Please refer to the Wasabi documentation for valid regions."
  }
}

variable "access_key" {
  type        = string
  description = "Wasabi access key"
  validation {
    condition = alltrue([
      can(regex("^[A-Z0-9]{20}$", var.access_key)),
      length(var.access_key) >= 20 // Minimum length check
    ])
    error_message = "Invalid Wasabi access key format. It should be at least 20 characters long and consist only of uppercase letters and numbers."
  }
}

variable "secret_key" {
  type        = string
  description = "Wasabi secret key"
  validation {
    condition = alltrue([
      can(regex("^[A-Za-z0-9/+=]{40}$", var.secret_key)),
      length(var.secret_key) >= 40 // Minimum length check
    ])
    error_message = "Invalid Wasabi secret key format. It should be at least 40 characters long and use a specific set of characters (alphanumeric, '/', '+', '=')."
  }
}

variable "user_names" {
  type        = list(string)
  default     = []
  description = "List of user names to create."

  validation {
    condition = alltrue([
      for name in var.user_names : can(regex("^[a-z0-9]{3,63}$", name))
    ])
    error_message = "Invalid user name(s) provided. Only lowercase letters and numbers are allowed. Each name must be between 3 and 63 characters long."
  }
}