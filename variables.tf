variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "labels" {
  description = "Resource labels."
  type        = map(any)
  default     = {}
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "subnet_range" {
  description = "Range of the subnet"
  type        = string
}

variable "bucket_name" {
  description = "Name of the Terraform state bucket"
  type        = string
}