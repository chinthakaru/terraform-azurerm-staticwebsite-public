# Call Custome module

module "Azure_Static_WebSite" {
  source = "./Modules/website"


# Resource Group
resource_group_name               = "webrg"
resource_group_location           = "westus"


# Storage Account
storage_account_name              = "myrgcoombo1023"
static_website_index_document     = "index.html"
static_website_error_404_document = "error.html"
static_website_source_folder      = "../static-content"

}