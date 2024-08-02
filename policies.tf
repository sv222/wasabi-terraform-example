# Read-Only Policy
data "wasabi_policy_document" "read_only" {
  statement {
    sid = "AllowRead"

    actions = [
      "s3:GetObject",
      "s3:GetObjectAttributes",
      "s3:ListBucket",
    ]

    resources = [
      "*",
    ]
  }
}

# Read-Write Policy
data "wasabi_policy_document" "read_write" {
  statement {
    sid = "AllowRead"

    actions = [
      "s3:*Object*",
      "s3:ListBucket",
    ]

    resources = [
      "*",
    ]
  }
}