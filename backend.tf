# TODO: need to check for wasabi configuration and posibiliy to use dynamo_db for the state locking

# # s3 backend
# terraform {
#   backend "s3" {
#     bucket = "XXXXXXXX-wasabi-state-file"
#     key    = "wasabi/tfstate_files/project.tfstate"
#     region = "us-east-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

# local backend
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}