variable "project_id" {
  description = "The ID of the project where this VPC will be created"
  type        = string
  default     = "qwiklabs-gcp-02-73844a09450a"
}

variable "region" {
  description = "The ID of the project regionm"
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "The ID of the project zone"
  type        = string
  default     = "us-east1-c"
}

variable "bucket" {
  description = "The ID of the bucket"
  type        = string
  default     = "XXXXXXXX"
}

