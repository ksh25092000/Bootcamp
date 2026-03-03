resource "azurerm_kubernetes_cluster" "aks" {
  name                = "bootcamp-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "bootcampaks"

  default_node_pool {
    name           = "default"
    node_count     = 2
    vm_size        = "Standard_B2s"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
  network_plugin = "azure"

  service_cidr   = "172.16.0.0/16"
  dns_service_ip = "172.16.0.10"
}
}