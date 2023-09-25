# veriables for Resource Group

variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
  #default     = "rg-${random_string.Random.id}"
}


variable "resource_group_location" {
  type        = string
  description = "value of the resource group location"


}
# veriables for Storage Accounts

variable "storage_account_name" {
  type        = string
  description = "name of the storage account"
  # default     = "storageaccount-${random_string.Random.id}"
}

variable "storage_rg_name" {
  type        = string
  description = "value of the storage account resource group"
  default     = "var.resource_group_name"

}

variable "storage_location" {
  type        = string
  description = "value of the storage account location"
  default     = "westus2"
}

variable "storage_account_account_tier" {
  type        = string
  description = "value of the storage account_tier"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "value of the storage account replication type"
  default     = "LRS"
}

variable "static_website_index_document" {
  description = "static website index document"
  type        = string
}
variable "static_website_error_404_document" {
  description = "static website error 404 document"
  type        = string
}
variable "static_website_source_folder" {
  description = "static website source folder"
  type        = string
}



