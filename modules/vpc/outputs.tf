output "public_subnet" {
  value = google_compute_subnetwork.public_subnet.id
}

output "private_subnet" {
  value = google_compute_subnetwork.private_subnet.id
}

output "vpc_id" {
  value = google_compute_network.vpc.id
}