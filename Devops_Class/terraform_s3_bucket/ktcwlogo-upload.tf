resource "aws_s3_bucket_object" "object" {
  for_each = fileset("ktcw_logo/","*")  
  bucket = aws_s3_bucket.b.id
  key    = each.value
  source = "ktcw_logo/${each.value}"
  etag = filemd5("ktcw_logo/${each.value}")
}