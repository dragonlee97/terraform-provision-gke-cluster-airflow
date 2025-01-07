variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "instance_name" {
  description = "sql instance name"
}

variable "database_version" {
  description = "db version"
}

variable "instance_tier" {
  description = "instance tier"
}

variable "disk_space" {
  description = "disk space"
}

variable "database_name" {
  description = "database name"
}

variable "db_username" {
  description = "db username"
}

variable "db_password" {}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "machine_type" {
  default = "n1-standard-1"
  description = "machine type"
}