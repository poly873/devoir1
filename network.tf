resource "azurerm_virtual_network" "vnet_pipeline" {
  name                = "cr460_virtualnetwork"
  location            = "Canada East"
  resource_group_name = azurerm_resource_group.rg_pipeline.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet_pipeline" {
  name                 = "cr460_subnet"
  resource_group_name  = azurerm_resource_group.rg_pipeline.name
  virtual_network_name = azurerm_virtual_network.vnet_pipeline.name
  address_prefixes     = ["10.0.1.0/24"]
}
