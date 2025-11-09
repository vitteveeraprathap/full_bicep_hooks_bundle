targetScope = 'resourceGroup'

@description('KeyVault name (globally unique)')
param kvName string

@description('Location (defaults to RG)')
param location string = resourceGroup().location

@allowed([ 'standard', 'premium' ])
param skuName string = 'standard'

param enableSoftDelete bool = true
param enablePurgeProtection bool = false

resource kv 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: kvName
  location: location
  properties: {
    tenantId: subscription().tenantId
    sku: { 
    family: 'A'
    name: skuName 
  }
    accessPolicies: []
    enableSoftDelete: enableSoftDelete
    enablePurgeProtection: enablePurgeProtection
  }
}

output keyVaultName string = kv.name
output keyVaultId string = kv.id
