targetScope = 'resourceGroup'

param storageAccountName string
param containerName string

resource st 'Microsoft.Storage/storageAccounts@2023-01-01' existing = {
  name: storageAccountName
}

resource blobSvc 'Microsoft.Storage/storageAccounts/blobServices@2021-09-01' existing = {
  parent: st
  name: 'default'
}

resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2022-09-01' = {
  parent: blobSvc
  name: containerName
  properties: { publicAccess: 'None' }
}

output containerName string = container.name
