terraform {}
provider "aws" {
  region = var.aws_region
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
