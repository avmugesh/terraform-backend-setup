terraform {
  backend "s3" {
    bucket         = "terraform-state-myproject"https://github.com/avmugesh/terraform-backend-setup/tree/main
    key            = "state/dev/infrastructure.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-app-bucket-${random_id.suffix.hex}"
  acl    = "private"

  tags = {
    Name        = "MyAppBucket"
    Environment = "Dev"
  }
}

resource "random_id" "suffix" {
  byte_length = 4
}
