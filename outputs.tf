output "bucket_name" {
  description = "The name of the provisioned S3 bucket"
  value       = aws_s3_bucket.torque_bucket.id
}

output "bucket_arn" {
  description = "The ARN of the provisioned S3 bucket"
  value       = aws_s3_bucket.torque_bucket.arn
}