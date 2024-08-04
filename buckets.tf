resource "wasabi_bucket" "sales_data_bucket" {
  bucket = "sales-data-bucket"
}

resource "wasabi_bucket" "marketing_data_bucket" {
  bucket = "marketing-data-bucket"
}

resource "wasabi_bucket" "engineering_data_bucket" {
  bucket = "engineering-data-bucket"
}

resource "wasabi_bucket" "finance_data_bucket" {
  bucket = "finance-data-bucket"
}

resource "wasabi_bucket" "operations_data_bucket" {
  bucket = "operations-data-bucket"
}