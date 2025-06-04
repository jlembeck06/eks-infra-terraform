resource "bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = "private"
  region = var.region

  tags = {
    Name        = "${var.project_name}-s3-bucket"
    Environment = var.environment
  }

}
