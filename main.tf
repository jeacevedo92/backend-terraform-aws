provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_s3_bucket" terraform_backend {
    bucket = var.bucket_name
    acl = var.acl
    tags = var.tags
  
}
