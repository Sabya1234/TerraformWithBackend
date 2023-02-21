resource "aws_s3_bucket" "tf_demo" {

  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "bucket_versoning" {
  bucket = aws_s3_bucket.tf_demo.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.tf_demo.id
  acl    = "private"
}