# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

project_id = ""
region     = ""

#GKE
gke_num_nodes = 1
machine_type  = "e2-standard-2"

#Cloud SQL
instance_name     = "data-bootcamp-1"
database_version  = "POSTGRES_15"
instance_tier     = "db-f1-micro"
disk_space        = 10
database_name     = "dbname"
db_username       = "dbuser"
