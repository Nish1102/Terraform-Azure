terraform {
  backend "azurerm" {
    storage_account_name = "azurestoragenishant"
    container_name = "backendstorage"
    key = "terraform.tfstate"
    access_key = ""
  }
}