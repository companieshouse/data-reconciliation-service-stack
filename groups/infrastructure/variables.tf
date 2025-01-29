# Environment
variable "environment" {
  description = "The environment name, defined in envirionments vars."
  type        = string
}

variable "aws_region" {
  default     = "eu-west-2"
  description = "The AWS region for deployment."
  type        = string
}

variable "aws_profile" {
  default     = "development-eu-west-2"
  description = "The AWS profile to use for deployment."
  type        = string
}

# EC2
variable "ec2_key_pair_name" {
  description = "The key pair for SSH access to ec2 instances in the clusters."
  type        = string
}

variable "ec2_instance_type" {
  default     = "t3.medium"
  description = "The instance type for ec2 instances in the clusters."
  type        = string
}

variable "ec2_image_id" {
  default     = "ami-04018f95156d810bc" # ECS optimized Amazon2 Linux in London created 15/03/2023
  description = "The machine image name for the ECS cluster launch configuration."
  type        = string
}

# Auto-scaling Group
variable "asg_max_instance_count" {
  default     = 0
  description = "The maximum allowed number of instances in the autoscaling group for the cluster."
  type        = number
}

variable "asg_min_instance_count" {
  default     = 0
  description = "The minimum allowed number of instances in the autoscaling group for the cluster."
  type        = number
}

variable "asg_desired_instance_count" {
  default     = 0
  description = "The desired number of instances in the autoscaling group for the cluster. Must fall within the min/max instance count range."
  type        = number
}

variable "asg_scaledown_schedule" {
  default     = ""
  description = "The schedule to use when scaling down the number of EC2 instances to zero."
  type        = string
}

variable "asg_scaleup_schedule" {
  default     = ""
  description = "The schedule to use when scaling up the number of EC2 instances to their normal desired level."
  type        = string
}

variable "enable_asg_autoscaling" {
  default     = true
  description = "Whether to enable auto-scaling of the ASG by creating a capacity provider for the ECS cluster."
  type        = bool
}

# Container Insights - ECS
variable "enable_container_insights" {
  default     = true
  description = "A boolean value indicating whether to enable Container Insights or not"
  type        = bool
}
