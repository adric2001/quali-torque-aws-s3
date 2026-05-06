variable "aws_region" {
  description = "The AWS region to deploy the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name. Must be lowercase."
  type        = string
  default     = "quali-torque-demo-"

variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key provided by Torque"
  type        = string
  sensitive   = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Key provided by Torque"
  type        = string
  sensitive   = true
}

  validation {
    condition     = can(regex("^[a-z0-9.-]+-$", var.bucket_prefix))
    error_message = "The bucket_prefix must contain only lowercase letters, numbers, hyphens, and end with a hyphen."
  }
}