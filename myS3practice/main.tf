resource "aws_s3_bucket" "mybucket" {
bucket = "sufia-terraform-accenture-01"
tags = {
Name = "sufia-tf-bucket01"
Environment = "Dev"
}
}

resource "aws_s3_bucket_acl" "mybucketacl" {
bucket = aws_s3_bucket.mybucket.id
acl = "private"
}

