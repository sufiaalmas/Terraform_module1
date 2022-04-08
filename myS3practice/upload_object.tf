resource "aws_s3_bucket_object" "myobject" {
bucket = aws_s3_bucket.mybucket.id
key = "myprojectpage"
acl = "private"    #### or it can be "public-read"
source = "index.html"
etag = filemd5 ("index.html")    ### Optional field used for encryption of object
}

