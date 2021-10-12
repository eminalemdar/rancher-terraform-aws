variable "ACCESS_KEY" {
  description = "AWS Access Key"
  type        = string
  default     = "" #Replace
}

variable "SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key"
  type        = string
  default     = "" #Replace
}

variable "rancher_api_url" {
  description = "Rancher API Url"
  type        = string
  default     = "" #Replace
}

variable "rancher2_access_key" {
  description = "Rancher2 Access Key"
  type        = string
  default     = "" #Replace
}

variable "rancher2_secret_key" {
  description = "Rancher2 Secret Key"
  type        = string
  default     = "" #Replace
}

variable "ami" {
  description = "an EC2 AMI Id"
  type        = string
  default     = "" #Replace
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "" #Replace
}

variable "security_group_id" {
  description = "Security Group id for EKS Clusters"
  type        = string
  default     = "" #Replace
}

variable "security_group_name" {
  description = "Security Group name for EC2 Clusters"
  type        = string
  default     = "" #Replace
}

variable "subnet_id_a" {
  description = "VPC Subnet ID"
  type        = string
  default     = "" #Replace
}

variable "subnet_id_b" {
  description = "VPC Subnet ID"
  type        = string
  default     = "" #Replace
}

variable "subnet_id_c" {
  description = "VPC Subnet ID"
  type        = string
  default     = "" #Replace
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "" #Replace
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

variable "docker_install_sh" {
  description = "Rancher Docker install script URL 20.10 version"
  type        = string
  default     = "https://releases.rancher.com/install-docker/20.10.sh"
}