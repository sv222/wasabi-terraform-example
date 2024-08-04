# Alice's Permissions
resource "wasabi_bucket_policy" "alice_sales_data_bucket_rw" {
  bucket = wasabi_bucket.sales_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "alice_marketing_data_bucket_rw" {
  bucket = wasabi_bucket.marketing_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "alice_engineering_data_bucket_ro" {
  bucket = wasabi_bucket.engineering_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}

# Bob's Permissions (All Buckets Read-Write)
resource "wasabi_bucket_policy" "bob_sales_data_bucket_rw" {
  bucket = wasabi_bucket.sales_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "bob_marketing_data_bucket_rw" {
  bucket = wasabi_bucket.marketing_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "bob_engineering_data_bucket_rw" {
  bucket = wasabi_bucket.engineering_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "bob_finance_data_bucket_rw" {
  bucket = wasabi_bucket.finance_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "bob_operations_data_bucket_rw" {
  bucket = wasabi_bucket.operations_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

# Charlie's Permissions
resource "wasabi_bucket_policy" "charlie_operations_data_bucket_rw" {
  bucket = wasabi_bucket.operations_data_bucket.id
  policy = data.wasabi_policy_document.read_write.json
}

resource "wasabi_bucket_policy" "charlie_finance_data_bucket_ro" {
  bucket = wasabi_bucket.finance_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}

# Backup User's Permissions (All Buckets Read-Only)
resource "wasabi_bucket_policy" "backup_sales_data_bucket_ro" {
  bucket = wasabi_bucket.sales_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}

resource "wasabi_bucket_policy" "backup_marketing_data_bucket_ro" {
  bucket = wasabi_bucket.marketing_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}

resource "wasabi_bucket_policy" "backup_engineering_data_bucket_ro" {
  bucket = wasabi_bucket.engineering_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}

resource "wasabi_bucket_policy" "backup_finance_data_bucket_ro" {
  bucket = wasabi_bucket.finance_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}

resource "wasabi_bucket_policy" "backup_operations_data_bucket_ro" {
  bucket = wasabi_bucket.operations_data_bucket.id
  policy = data.wasabi_policy_document.read_only.json
}