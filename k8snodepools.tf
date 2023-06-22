# Create Lnux Azure AKS Node Pool
resource "azurerm_kubernetes_cluster_node_pool" "k8snodepool" {
  enable_auto_scaling   = true
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  max_count             = 3
  min_count             = 1
  mode                  = "User"
  name                  = "k8snodepool2"
  os_disk_size_gb       = 30
  vm_size               = "Standard_DS2_v2"
  vnet_subnet_id        = azurerm_subnet.aks-default.id   
}