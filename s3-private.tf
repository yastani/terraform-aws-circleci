resource "aws_s3_bucket" "private" {
  bucket = "${terraform.workspace}-priv-s3"
  acl    = "private"
}
