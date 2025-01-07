# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "private_subnet" {
  name          = "${var.project_id}-private-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "${var.project_id}-public-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.11.0.0/24"
}
