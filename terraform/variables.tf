
# AWS Provider

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}


# VPC & Subnets

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "AWS availability zone for subnets"
  type        = string
  default     = "us-east-1a"
}


# EC2 Key Pair

variable "key_name" {
  description = "Name of the EC2 Key Pair (must exist in AWS)"
  type        = string
  default = "web-keypair"
}


# AMI IDs

variable "control_plane_ami" {
  description = "AMI ID for the control plane node"
  type        = string
  default     = "ami-0360c520857e3138f" 
}

variable "worker_ami" {
  description = "AMI ID for worker nodes"
  type        = string
  default     = "ami-0360c520857e3138f" 
}


# EC2 Instance Types

variable "control_instance_type" {
  description = "EC2 instance type for control plane"
  type        = string
  default     = "t3.medium"
}

variable "worker_instance_type" {
  description = "EC2 instance type for workers"
  type        = string
  default     = "t3.small"
}

variable "worker_count" {
  description = "Number of worker nodes"
  type        = number
  default     = 2
}

# Security

variable "allow_ssh_cidr" {
  description = "CIDR block allowed to SSH into EC2 instances"
  type        = string
  default     = "0.0.0.0/0"  
}
