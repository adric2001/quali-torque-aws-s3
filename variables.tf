variable "aws_region" {
  description = "The AWS region to deploy the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name. Must be lowercase."
  type        = string
  default     = "quali-torque-demo-"

  validation {
    condition     = can(regex("^[a-z0-9.-]+-$", var.bucket_prefix))
    error_message = "The bucket_prefix must contain only lowercase letters, numbers, hyphens, and end with a hyphen."
  }
}