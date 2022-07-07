resource "oraclepaas_database_service_instance" "bdoracle" {
  name              = var.dboracle_name
  edition           = var.edition
  shape             = var.shape
  subscription_type = var.subscription_type
  version           = "12.2.0.1"
  vm_public_key     = var.vm_public_key
  
  database_configuration {
      admin_user         = var.admin_user
      admin_password     = var.admin_password
      sid                = var.sid
      backup_destination = "NONE"
      usable_storage     = var.usable_storage
  }
}
