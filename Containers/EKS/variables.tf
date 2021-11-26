variable "region" {
  type        = string
  description = "Region to be used"
}

variable "cluster_name" {
  type        = string
  description = "Cluster to be used"
}

variable "cluster_version" {
  default     = "1.21"
  description = "Version of the cluster"
}

variable "instance_type" {
  default     = "m4.large"
  description = "Type of instance"
}

variable "asg_max_size" {
  type        = string
  description = "Max # of ags"
}

variable "asg_min_size" {
  type        = string
  description = "Min # of ags"
}

variable "tags" {
  type        = map(any)
  description = "Names of tags"
}






















