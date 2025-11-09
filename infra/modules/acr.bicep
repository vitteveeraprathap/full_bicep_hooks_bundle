targetScope = 'resourceGroup'

param acrName string
param location string = resourceGroup().location
@allowed([ 'Basic' 'Standard' 'Premium' ])
param sku string = 'Standard'

resource acr 'Microsoft.ContainerRegistry/registries@2022-02-01-preview' = {
  name: acrName
  location: location
  sku: { name: sku }
  properties: { adminUserEnabled: false }
}

output acrName string = acr.name
output acrId string = acr.id
