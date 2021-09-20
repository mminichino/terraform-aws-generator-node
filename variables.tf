##########################################################
#
# Default values for creating a Couchbase cluster on AWS.
#
##########################################################

variable "gen_name_prefix" {
  description = "Prefix for generator nodes"
  default     = "perfgen"
  type        = string
}

variable "region_name" {
  description = "Region name"
  default     = "us-east-1"
  type        = string
}

variable "gen_instance_type" {
  description = "Generator node instance type"
  default     = "t2.micro"
  type        = string
}

variable "gen_instances" {
  description = "Number of load generator nodes"
  default     = "1"
  type        = string
}

variable "gen_start_num" {
  description = "Starting host number for generator nodes"
  default     = "1"
  type        = string
}

variable "ssh_user" {
  description = "The default username for the AMI"
  type        = string
  default     = "centos"
}

variable "ssh_key" {
  description = "Key name to use"
  default     = ""
  type        = string
}

variable "ssh_private_key" {
  description = "The private key to use when connecting to the instances"
  default     = ""
  type        = string
}

variable "subnet_ids" {
  description = "List of subnets to launch the instances in. Example: ['subnet-12345','subnet-98765']."
  default     = [""]
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security group to assign to the instances"
  default     = [""]
  type        = list(string)
}

variable "root_volume_iops" {
  description = "IOPS (only for io1 volume type)"
  default     = 0
  type        = string
}

variable "root_volume_size" {
  description = "The root volume size"
  default     = "50"
  type        = string
}

variable "root_volume_type" {
  description = "The root volume type"
  default     = "gp2"
  type        = string
}
