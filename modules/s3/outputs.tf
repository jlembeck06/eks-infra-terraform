output "bucket_name" {
  description = "Nome do bucket S3 criado"
  value       = aws_s3_bucket.s3_bucket.bucket_arn

}
output "bucket_id" {
  description = "ARN do bucket S3 criado"
  value       = aws_s3_bucket.s3_bucket.id

}
