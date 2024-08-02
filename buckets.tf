resource "wasabi_bucket" "sales_data_bucket" {
  bucket = "sales-${var.bucket_name_postfix}"
}

resource "wasabi_bucket" "marketing_data_bucket" {
  bucket = "marketing-${var.bucket_name_postfix}"
}

resource "wasabi_bucket" "engineering_data_bucket" {
  bucket = "engineering-${var.bucket_name_postfix}"
}

resource "wasabi_bucket" "finance_data_bucket" {
  bucket = "finance-${var.bucket_name_postfix}"
}

resource "wasabi_bucket" "operations_data_bucket" {
  bucket = "operations-${var.bucket_name_postfix}"
}