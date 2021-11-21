provider "azurerm" {
  skip_provider_registration = "true"
  features {
    
  }
}

resource "azurerm_management_group" "example_parent" {
  display_name = "Sukhanth_Management_group"

  subscription_ids = ["964df7ca-3ba4-48b6-a695-1ed9db5723f8",]
}

resource "azurerm_management_group" "example_child" {
  display_name               = "Sukhanth_Management_group_2"
  parent_management_group_id = "${azurerm_management_group.example_parent.id}"

  subscription_ids = [
    "964df7ca-3ba4-48b6-a695-1ed9db5723f8",
  ]
  
}