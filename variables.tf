variable "env" {
  description = "Environment Name [dev,prod]"
  default     = "dev"
}

variable "owner" {
  description = "Owner Name [SRE,DevOps]"
  default     = "SRE"
}

variable "name" {
  description = "S3 Bucket & DynamoDB Table Name"
  default     = "nnh-tf-state"
}
