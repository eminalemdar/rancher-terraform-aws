variable "ACCESS_KEY" {
  description = "AWS Access Key"
  type        = string
  default     = "AccessKey" #Replace
}

variable "SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key"
  type        = string
  default     = "SecretAccessKey" #Replace
}

variable "rancher_api_url" {
  description = "Rancher API Url"
  type        = string
  default     = "https://........" #Replace
}

variable "rancher2_access_key" {
  description = "Rancher2 Access Key"
  type        = string
  default     = "token-xxxx" #Replace
}

variable "rancher2_secret_key" {
  description = "Rancher2 Secret Key"
  type        = string
  default     = "xxxxxx" #Replace
}

variable "ami" {
  description = "an EC2 AMI Id"
  type        = string
  default     = "ami-xxxx" #Replace
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "eu-west-1"
}

variable "security_group_name" {
  description = "Security Group name"
  type        = string
  default     = "xxxx" #Replace
}

variable "subnet_id" {
  description = "VPC Subnet ID"
  type        = string
  default     = "subnet-xxxx" #Replace
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "vpc-xxxx" #Replace
}

variable "az" {
  description = "Availability Zone"
  type        = string
  default     = "a"
}

variable "control_plane_instance_type" {
  description = "EC2 Instance Type for master instances"
  type        = string
  default     = "" #Replace
}

variable "worker_instance_type" {
  description = "EC2 Instance Type for worker instances"
  type        = string
  default     = "" #Replace
}

variable "key_name" {
  description = "EC2 Key Pair Name"
  type        = string
  default     = "xxxx" #Replace
}