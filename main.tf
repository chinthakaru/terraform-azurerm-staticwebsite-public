#Random String for resources
resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
  numeric = true
}

#Resource Group

resource "azurerm_resource_group" "this_rg" {
  name     = "myrg-${var.resource_group_name}"
  location = var.resource_group_location
}



#Storage Accounts

resource "azurerm_storage_account" "storage" {
  name                     = "${var.storage_account_name}${random_string.random.id}"
  location                 = var.storage_location
  resource_group_name      = azurerm_resource_group.this_rg.name
  account_tier             = var.storage_account_account_tier
  account_replication_type = var.account_replication_type

  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
}

