output "db_public_ip" {
  value = google_sql_database_instance.airflow_db.public_ip_address
  description = "The public IP address of the Cloud SQL instance"
}