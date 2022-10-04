provider "aws" {
 
  region = "ap-south-1" 
}

resource "aws_s3_bucket" "subodh1005" {
  bucket = "subodh1005"
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.subodh1005.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_subodh" {
  bucket = aws_s3_bucket.subodh1005.id
  versioning_configuration {
    status = "Enabled"
  }
}
