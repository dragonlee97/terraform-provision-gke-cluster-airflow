# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "kubernetes_cluster_name" {
  value       = module.gke.gke_cluster_name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = module.gke.endpoint
  description = "GKE Cluster Host"
}

output "cloudsql_public_ip" {
  value = module.cloudsql.db_public_ip
  description = "The public IP address of the Cloud SQL instance"
}
