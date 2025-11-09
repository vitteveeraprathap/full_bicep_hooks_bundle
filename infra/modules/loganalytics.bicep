targetScope = 'resourceGroup'

param workspaceName string
param location string = resourceGroup().location
param retentionInDays int = 30

resource workspace 'Microsoft.OperationalInsights/workspaces@2021-06-01' = {
  name: workspaceName
  location: location
  properties: {
    retentionInDays: retentionInDays
  }
}

output workspaceName string = workspace.name
output workspaceId string = workspace.id
