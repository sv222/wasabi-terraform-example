output "bucket_arns" {
  value = {
    sales      = wasabi_bucket.sales_data_bucket.arn
    marketing  = wasabi_bucket.marketing_data_bucket.arn
    engineering = wasabi_bucket.engineering_data_bucket.arn
    finance    = wasabi_bucket.finance_data_bucket.arn
    operations = wasabi_bucket.operations_data_bucket.arn
  }
  description = "The ARNs of the created buckets"
}

output "user_names" {
  value = {
    alice   = wasabi_user.alice.name
    bob     = wasabi_user.bob.name
    charlie = wasabi_user.charlie.name
    backup  = wasabi_user.backup.name
  }
  description = "The names of the created users"
}