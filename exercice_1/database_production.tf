variable "default_region" {
  description = "Default hosting region"
  default     = "us-central1"
}

module "prod_db" {
  source    = "./module_database"
  db_name   = "production_db"
  db_region = var.default_region
}

output "prod_db_specs" {
  value = {
    name            = module.prod_db.db_output.name
    version         = module.prod_db.db_output.version
    default_region  = module.prod_db.db_output.region == var.default_region ? true : false # true for us-central1 and false for eu-west3 or other region
  }
}
