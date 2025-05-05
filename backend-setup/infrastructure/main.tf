terraform {}
provider "aws" {
  region = "us-east-1"
}

module "backend" {
  source              = "../modules/tf-backend"
  bucket_name         = "terraform-state-myproject"
  dynamodb_table_name = "terraform-locks"

  tags = {
    Owner       = "mithreshwar"
    Environment = "Dev"
  }
}
