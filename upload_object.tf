resource "aws_s3_bucket_object" "myobject1" {

for_each = fileset("mydata/","*")

        bucket = aws_s3_bucket.mybucket.id
        key = each.value
        acl = "private"
        source = "mydata/${each.value}"
        etag = filemd5 ("mydata/${each.value}")
}

