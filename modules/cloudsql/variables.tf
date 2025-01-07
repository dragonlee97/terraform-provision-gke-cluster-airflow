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
#export TF_VAR_db_password="abcde1223456"

variable "vpc_id" {
  description = "the id of vpc"
}

