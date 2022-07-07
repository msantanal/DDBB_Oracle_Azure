resource "oraclepaas_database_service_instance" "bdoracle" {
  name              = var.dboracle_name
  edition           = var.edition
  shape             = var.shape
  subscription_type = var.subscription_type
  version           = var.version
  vm_public_key     = var.vm_public_key
  
  database_configuration {
      admin_password     = var.admin_password
      sid                = var.sid
      backup_destination = "NONE"
      usable_storage     = var.usable_storage
  }
}
