
# VPC & Subnet

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "public_subnet_id" {
  value       = aws_subnet.public.id
  description = "Public subnet ID"
}

output "private_subnet_id" {
  value       = aws_subnet.private.id
  description = "Private subnet ID"
}


# Security Group

output "security_group_id" {
  value       = aws_security_group.k8s_sg.id
  description = "Security group ID"
}

# IAM

output "iam_role_name" {
  value       = aws_iam_role.ec2_role.name
  description = "IAM role attached to EC2 instances"
}

output "iam_instance_profile" {
  value       = aws_iam_instance_profile.ec2_profile.name
  description = "IAM instance profile attached to EC2 instances"
}


# EC2 Instances

output "control_plane_public_ip" {
  value       = aws_instance.control_plane.public_ip
  description = "Public IP of control plane node"
}

output "worker_private_ips" {
  value       = [for w in aws_instance.worker : w.private_ip]
  description = "Private IPs of all worker nodes"
}


# NAT Gateway

output "nat_gateway_id" {
  value       = aws_nat_gateway.nat.id
  description = "NAT Gateway ID"
}
