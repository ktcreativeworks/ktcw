resource "aws_s3_bucket" "b" {
  bucket = "bucket-created-using-terraform"
  acl    = "public-read"

  tags = {
    Name        = "My bucket"
    Environment = "prod"
  }
}