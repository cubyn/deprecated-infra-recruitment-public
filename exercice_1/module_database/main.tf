variable "db_name" {
  description = "Database name in gcp sql"
  default     = "db_default"
}

variable "db_instance_type" {
  description = "Database instance type db-f1-micro n1-standard-X"
  default     = "n1-standard-1"
}

variable "db_region" {
  description = "Default hosting region"
  default     = "us-west1"
}

resource "google_sql_database_instance" "db_instance" {
  provider         = google-beta
  name             = var.db_name
  database_version = "POSTGRES_11"
  region           = var.db_region
  settings {
    tier = var.db_instance_type
  }
}

output "db_output" {
  value = {
    name    = google_sql_database_instance.db_instance.name
    version = google_sql_database_instance.db_instance.database_version
    region  = google_sql_database_instance.db_instance.region
    useless = null # yes that's a joke it works but it's useless (null attribute are ignored)
  }
}