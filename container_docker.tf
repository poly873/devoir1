resource "azurerm_container_group" "container_pipeline" {
  name                = "cr460_docker"
  location            = azurerm_resource_group.rg_pipeline.location
  resource_group_name = azurerm_resource_group.rg_pipeline.name
  ip_address_type     = "Public"
  dns_name_label      = "aci-label"
  os_type             = "Linux"

  container {
    name   = "nginx-container"
    image  = "nginx:latest"
    cpu    = "0.5"
    memory = "1.5"

    ports {
      port     = 80
      protocol = "TCP"
    }
  }

  tags = {
    environment = "testing"
  }
}