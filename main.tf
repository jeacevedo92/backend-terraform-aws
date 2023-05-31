provider "aws" {
  profile = "default"
  region  = "us-east-2"
}


resource "aws_kms_key" "key" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
}


resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
    acl = var.acl
    tags = var.tags  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}