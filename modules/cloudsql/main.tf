resource "google_sql_database_instance" "airflow_db" {
  name              = var.instance_name
  database_version  = var.database_version
  region            = var.region

  settings {
    tier      = var.instance_tier
    disk_size = var.disk_space

    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        value           = "88.181.96.60/32"
        name            = "test-cluster"
        }
      }
  }
  deletion_protection = false
}

resource "google_sql_database" "database" {
  name     = var.database_name
  instance = google_sql_database_instance.airflow_db.name
}

resource "google_sql_user" "users" {
  name     = var.db_username
  instance = google_sql_database_instance.airflow_db.name
  password = var.db_password
}