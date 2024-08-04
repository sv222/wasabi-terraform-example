# TODO: Verify policy accuracy in Wasabi documentation
and comparability with AWS S3

# Read-Only Policy
# Reference: https://docs.aws.amazon.com/aws-managed-policy/latest/reference/AmazonS3ReadOnlyAccess.html

data "wasabi_policy_document" "read_only" {
  statement {
    sid = "ReadOnlyAccess"

    actions = [
      "s3:Get*",
      "s3:List*",
      "s3:Describe*",
    ]

    resources = [
      "arn:aws:s3:::sales-data-bucket",
      "arn:aws:s3:::sales-data-bucket/*",
      "arn:aws:s3:::marketing-data-bucket",
      "arn:aws:s3:::marketing-data-bucket/*",
      "arn:aws:s3:::engineering-data-bucket",
      "arn:aws:s3:::engineering-data-bucket/*",
      "arn:aws:s3:::finance-data-bucket",
      "arn:aws:s3:::finance-data-bucket/*",
      "arn:aws:s3:::operations-data-bucket",
      "arn:aws:s3:::operations-data-bucket/*"
    ]
  }
}

# Read-Write Policy
# Reference: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_examples_s3_rw-bucket.html

data "wasabi_policy_document" "read_write" {
  statement {
    sid = "ReadWriteAccess"

    actions = [
      "s3:*Object*",
      "s3:ListBucket",
    ]

    resources = [
      "arn:aws:s3:::sales-data-bucket",
      "arn:aws:s3:::sales-data-bucket/*",
      "arn:aws:s3:::marketing-data-bucket",
      "arn:aws:s3:::marketing-data-bucket/*",
      "arn:aws:s3:::engineering-data-bucket",
      "arn:aws:s3:::engineering-data-bucket/*",
      "arn:aws:s3:::finance-data-bucket",
      "arn:aws:s3:::finance-data-bucket/*",
      "arn:aws:s3:::operations-data-bucket",
      "arn:aws:s3:::operations-data-bucket/*"
    ]
  }
}