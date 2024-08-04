
# Wasabi Buckets and Users creation with Terraform

This Terraform code provisions buckets and users in Wasabi, a cloud storage service. It demonstrates creating buckets, defining IAM policies, creating users, and attaching policies to buckets, providing specific permissions to different users.

## Prerequisites

- Terraform installed on your system.
- A Wasabi account with appropriate credentials.

## Configuration

1. **Set up Wasabi Provider:**
   - Ensure you have the Wasabi Terraform provider installed.
   - Provide your Wasabi access key and secret key.

2. **Configure Backend (Optional):**
   - The code includes a commented-out section for configuring an S3 backend. If you wish to use an S3 backend for storing your Terraform state, uncomment the relevant section in the `backend.tf` file and configure it with your bucket details.

3. **Variables:**
   - Review and update the variables in the `terraform.tfvars` file, such as `region` and `user_names` according to your requirements.

## Usage

1. **Initialize Terraform:**
   ```bash
   terraform init
   ```

2. **Review Terraform Plan:**
   ```bash
   terraform plan
   ```

3. **Apply Terraform Configuration:**
   ```bash
   terraform apply
   ```

   **Note:** The `main.tf` file is currently set up for demonstration purposes with all code in one place. Before running `terraform apply`, comment out the sections you don't want to execute, such as provider configuration if you've already defined it elsewhere.

## Resources Created

- **Buckets:** Five Wasabi buckets (sales, marketing, engineering, finance, operations) with a customizable postfix.
- **Users:** Four Wasabi users (Alice, Bob, Charlie, Backup).
- **Policies:**
  - Read-only policy allowing listing bucket contents and getting object attributes.
  - Read-write policy allowing full access to buckets and objects.
- **Bucket Policies:** Attaching specific policies to buckets, granting different access levels to each user.

## Outputs

- `bucket_arns`: A map of bucket names to their ARNs.

## Cleanup

To destroy the resources created by this Terraform code, run:

```bash
terraform destroy
```
