variable "project_id" {}

variable "region" {
  description = "region"
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "gke_num_nodes" {
  #default     = 2
  description = "number of gke nodes"
}

variable "machine_type" {
  type = string
}